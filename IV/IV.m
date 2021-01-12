clear all

%parametry obiektu
alfa1 = -1.413505;
alfa2 = 0.462120;
beta1 = 0.016447;
beta2 = 0.012722;

%rzad
na = 2;
nb = 5;

%czas trwania symulacji
kk = 800;

%wybor algorytmu
algorytm='PID'; %GPC NPL PID oraz NO, ktory nie dziala

%parametry ciaglego PID
T  = 1;
K  = -0.6;
Ti = 10;
Td = 0.5;

%parametry dyskretnego PID
r0 = K*(1+(T/(2*Ti)) + Td/T);
r1 = K*((T/(2*Ti)) - ((2*Td)/T) - 1);
r2 = (K*Td)/T;

%uchyb PID
e = zeros(1,kk);

%parametry regulatora GPC i NPL
global N; N = 15;
global Nu; Nu = 5;
global lambda; lambda = 1;

%inicjalizacja
global u; u = zeros(1,kk);        %sterowanie
global y; y = zeros(1,kk);        %wyjscie obiektu
ymod     = zeros(1,kk); %wyjscie modelu
ymod_lin = zeros(1,kk); %wyjscie modelu zlinearyzowanego
y_zero   = zeros(N,1);  %trajektoria swobodna
x1 = zeros(1,kk);       %x1
x2 = zeros(1,kk);       %x2
s  = zeros(1,N);        %odpowiedz skokowa
I  = eye(Nu);

%ograniczenia
u_min = -1;
u_max = 1;
umin_opt = u_min*ones(Nu,1);
umax_opt = u_max*ones(Nu,1);

%wartosc zadana
global yzad;
yzad(1:round(kk/10)) = 0;
yzad(round(kk/6):round(2*kk/6)) = 1.3;
yzad(round(2*kk/6):round(3*kk/6)) = 2.2;
yzad(round(3*kk/6):round(4*kk/6)) = 0.7;
yzad(round(4*kk/6):round(5*kk/6)) = -0.1;
yzad(round(5*kk/6):round(6*kk/6)) =-0.3;
Yzad=yzad.*ones(N,1);

global w10 w1 w20 w2
model8              %wczytanie modelu
delta = 10^(-7);    %delta do linearyzacji modelu


%%%--- GPC - obliczenia offline ---%%%
if strcmp(algorytm, 'GPC')
    %%%--- model liniowy ---%%%
    w(1)=-0.0604346804947776;
    w(2)=0.0484656613758900;
    w(3)=1.89416871378879;
    w(4)=-0.9007809402858;
    b = [0 0 0 w(1) w(2)];
    a = [w(3) w(4)];
    %%%--- GPC - odpowiedz skokowa ---%%%
    for j=1:N
        %suma b
        suma_b = 0;
        i_max  = min([j, nb]);
        for i=1:i_max
            suma_b = b(i) + suma_b;
        end
        
        %suma a
        suma_a = 0;
        i_max  = min([j-1, na]);
        for i=1:i_max
            suma_a = a(i)*s(j-i) + suma_a;
        end
        s(j) = suma_b - suma_a;
    end
    
    %%%--- GPC - macierz dynamiczna ---%%%
    M=zeros(N, Nu);
    i=0;
    for j=1:Nu
        M(j:N,j)=s(1:N-i).';
        i=i+1;
    end
    K=inv(M.'*M+lambda*I)*M.';
end

%%%%%%%%%%%%%%%%-------------- PETLA REGULACJI --------------%%%%%%%%%%%%%%%%
global k;
global d;
for k=6:kk
    %%%---pomiar wyjscia obiektu---%%%
    x1(k) = -alfa1*x1(k-1)+x2(k-1)+beta1*g1(u(k-4));
    x2(k) = -alfa2*x1(k-1)+beta2*g1(u(k-4));
    y(k)  = g2(x1(k));
    
    if strcmp(algorytm, 'PID')
        %uchyb
        e(k) = yzad(k)-y(k);
        
        %sygnal sterujacy regulatora PID
        u(k) = r2*e(k-2) + r1*e(k-1) + r0*e(k) + u(k-1);
    end
    
    if strcmp(algorytm, 'NPL') || strcmp(algorytm, 'GPC') || strcmp(algorytm, 'NO')
        %%%---wyjscie modelu---%%%
        if strcmp(algorytm, 'NPL') || strcmp(algorytm, 'NO')
            wesn_arx = [u(k-4) u(k-5) y(k-1) y(k-2)]';
            ymod(k)  = w20+w2*tanh(w10+w1*wesn_arx);
        elseif strcmp(algorytm, 'GPC')
            ymod(k)  = b(4)*u(k-4) + b(5)*u(k-5) + a(1)*y(k-1) + a(2)*y(k-2);
        end
        
        %%%---pomiar zaklocenia---%%%
        d=y(k)-ymod(k);
        
        if strcmp(algorytm, 'NO')
            u0 = u(k-1)*ones(1,Nu);
            opcje = optimset('Algorithm','sqp', 'Display', 'off', 'TolFun',1e-10,'TolX',1e-10);
            uopt = fmincon(@fun, u0, [],[],[],[], umin_opt, umax_opt, [], opcje);
            drawnow;
            u(k)=uopt(1);
        elseif strcmp(algorytm, 'NPL')
            %%%---trajektoria swobodna---%%%
            wesn = [u(k-3) u(k-4) y(k) y(k-1)]';
            y_zero(1) = w20+w2*tanh(w10+w1*wesn) + d;
            wesn = [u(k-2) u(k-3) y_zero(1) y(k)]';
            y_zero(2) = w20+w2*tanh(w10+w1*wesn) + d;
            wesn = [u(k-1) u(k-2) y_zero(2) y_zero(1)]';
            y_zero(3) = w20+w2*tanh(w10+w1*wesn) + d;
            for i=4:N
                wesn = [u(k-1) u(k-1) y_zero(i-1) y_zero(i-2)]';
                y_zero(i) = w20+w2*tanh(w10+w1*wesn) + d;
            end
            
            %%%---linearyzacja modelu---%%%
            y_pp = ymod(k);
            
            %wspolczynnik b4
            wesn = [u(k-4)+delta u(k-5) y(k-1) y(k-2)]';
            y_d = w20+w2*tanh(w10+w1*wesn);
            b4 = (y_d-y_pp)/delta;
            
            %wspolczynnik b5
            wesn = [u(k-4) u(k-5)+delta y(k-1) y(k-2)]';
            y_d = w20+w2*tanh(w10+w1*wesn);
            b5  = (y_d-y_pp)/delta;
            
            %wspolczynnik a1
            wesn = [u(k-4) u(k-5) y(k-1)+delta y(k-2)]';
            y_d = w20+w2*tanh(w10+w1*wesn);
            a1  = -(y_d-y_pp)/delta;
            
            %wspolczynnik a2
            wesn = [u(k-4) u(k-5) y(k-1) y(k-2)+delta]';
            y_d = w20+w2*tanh(w10+w1*wesn);
            a2  = -(y_d-y_pp)/delta;
            
            %model zlinearyzwoany
            ymod_lin(k) = b4*u(k-4) + b5*u(k-5) + a1*y(k-1) + a2*y(k-2);
            
            %%%---odpowiedz skokowa---%%%
            
            a = [a1 a2];
            b = [0 0 0 b4 b5];
            for j=1:N
                %suma b
                suma_b = 0;
                i_max  = min([j, nb]);
                for i=1:i_max
                    suma_b = b(i) + suma_b;
                end
                
                %suma a
                suma_a = 0;
                i_max  = min([j-1, na]);
                for i=1:i_max
                    suma_a = a(i)*s(j-i) + suma_a; %tu mo¿e byc blad
                end
                s(j) = suma_b - suma_a;
            end
            
            %%%---macierz dynamiczna---%%%
            M=zeros(N, Nu);
            i=0;
            for j=1:Nu  %wypelnianie macierzy trojkatnej dolnej M
                M(j:N,j)=s(1:N-i)';
                i=i+1;
            end
            K=inv(M.'*M+lambda*I)*M';
        elseif strcmp(algorytm, 'GPC')
            %%%-----------GPC------------%%%
            %%%---trajektoria swobodna---%%%
            y_zero(1) = b(4)*u(k-3) + b(5)*u(k-4) + a(1)*y(k) + a(2)*y(k-1) + d;
            y_zero(2) = b(4)*u(k-2) + b(5)*u(k-3) + a(1)*y_zero(1) + a(2)*y(k) + d;
            y_zero(3) = b(4)*u(k-1) + b(5)*u(k-2) + a(1)*y_zero(2) + a(2)*y_zero(1) + d;
            for i=4:N
                y_zero(i) = b(4)*u(k-1) + b(5)*u(k-2) + a(1)*y_zero(i-1) + a(2)*y_zero(i-2) + d;
            end
        end
        %%%---obliczenie sterowania---%%%
        deltaU=K*(Yzad(:,k)-y_zero);
        delta_u=deltaU(1);
        u(k)=u(k-1)+delta_u;
    end
    
    %ograniczenie sygna³u steruj¹cego
    if not(strcmp(algorytm, 'NO'))
        if u(k)>u_max
            u(k)=u_max;
        elseif u(k)<u_min
            u(k)=u_min;
        end
    end
end

y=y(1:kk);
E = (yzad(:)-y(:))'*(yzad(:)-y(:));
str = sprintf('Algorytm %s    E=%e', algorytm, E);
if strcmp(algorytm, 'PID')
    str2 = sprintf('K=%.2f  Ti=%d  Td=%.2f', K, Ti, Td);
    filename = sprintf('%s__K=%.2f__Ti=%d__Td=%.2f', algorytm, K, Ti, Td);
    filename = strrep(filename,'.',',');
else
    str2 = sprintf('N=%d  Nu=%d  lambda=%d', N, Nu, lambda);
    filename = sprintf('%s__N=%d__Nu=%d__l=%d', algorytm, N, Nu, lambda);
end
%%%%%%%%prezentacja wyników symulacji%%%%%%%%
figure; 
subplot(2,1,1);
stairs(y); hold on;
stairs(yzad,':'); xlim([0, kk-N]); ylim([-0.5, 2.4]);
title({'Wyjœcie regulatora',str, str2}); xlabel('k'); ylabel('wartoœæ sygna³u');
legend('wyjœcie y(k)','wartoœæ zadana');

subplot(2,1,2); 
stairs(u);hold on
title({'Sygna³ sterowania'}); xlabel('k'); ylabel('wartoœæ sygna³u'); xlim([0, kk-N]);

print(filename,'-dpng','-r400');