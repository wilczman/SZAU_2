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
kk = 2000;

%wybor algorytmu
algorytm='GPC'; %GPC NPL

%parametry regulatora
N = 20;
Nu = 10;
lambda = 5;
%inicjalizacja
u = zeros(1,kk);        %sterowanie
y = zeros(1,kk);        %wyjscie obiektu
ymod     = zeros(1,kk);     %wyjscie modelu
ymod_lin = zeros(1,kk); %wyjscie modelu zlinearyzowanego
y_zero   = zeros(N,1);    %trajektoria swobodna
x1 = zeros(1,kk);       %x1
x2 = zeros(1,kk);       %x2
s  = zeros(1,N);        %odpowiedz skokowa
I  = eye(Nu);

%ograniczenia
u_min = -1;
u_max = 1;

%wartosc zadana
yzad(1:round(kk/10)) = 0;
yzad(round(kk/10):round(2*kk/10)) = 0.5;
yzad(round(kk/5):round(2*kk/5))   = 0.8;
yzad(round(2*kk/5):round(3*kk/5)) = 0.1;
yzad(round(3*kk/5):round(4*kk/5)) =-0.3;
yzad(round(4*kk/5):round(5*kk/5)) =-0.5;
Yzad=yzad.*ones(N,1);

model8              %wczytanie modelu
delta = 10^(-6);    %delta do linearyzacji modelu


%%%--- GPC - obliczenia offline ---%%%

% ymod_mnk(1:5)=y(1:5);
% for k=6:S
%     ymod_mnk(k)=w(1)*u(k-4)+w(2)*u(k-5)+w(3)*ymod_mnk(k-1)+w(4)*ymod_mnk(k-2);
% end
if strcmp(algorytm, 'GPC')
    %%%--- model liniowy ---%%%
    %Mw=[u(2:end-4)' u(1:end-5)' y(5:end-1)' y(4:end-2)'];
    %Y=y(6:end);
    %w=Mw\Y;
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
for k=6:kk
    %%%---pomiar wyjscia obiektu---%%%
    x1(k) = -alfa1*x1(k-1)+x2(k-1)+beta1*g1(u(k-4));
    x2(k) = -alfa2*x1(k-1)+beta2*g1(u(k-4));
    y(k)  = g2(x1(k));
    
    %%%---wyjscie modelu---%%%
    if strcmp(algorytm, 'NPL')
        wesn_arx = [u(k-4) u(k-5) y(k-1) y(k-2)]';
        ymod(k)  = w20+w2*tanh(w10+w1*wesn_arx);
    elseif strcmp(algorytm, 'GPC')
        ymod(k)  = b(4)*u(k-4) + b(5)*u(k-5) + a(1)*y(k-1) + a(2)*y(k-2);
    end
    
    %%%---pomiar zaklocenia---%%%
    d=y(k)-ymod(k);
    
    if strcmp(algorytm, 'NPL')
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
                suma_a = a(i)*s(j-i) + suma_a;
            end
            s(j) = suma_b - suma_a;
        end
        
        %    for ks=1:N
        %       s(ks)=0;
        %       for i=1:min(ks,nb)
        %          s(ks)=s(ks)+b(i);
        %       end
        %       for i=1:min(ks-1,na)
        %           s(ks)=s(ks)-a(i)*s(ks-i);
        %       end
        %    %wyn_s(ks,k)=s(ks);
        %    end
        
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
    
    %ograniczenie sygna³u steruj¹cego
    if u(k)>u_max
        u(k)=u_max;
    elseif u(k)<u_min
        u(k)=u_min;
    end
end


%%%%%%%%prezentacja wyników symulacji%%%%%%%%
figure; stairs(u);hold on
title('Sygna³ sterowania NPL'); xlabel('k');
figure; stairs(y); hold on;
stairs(yzad,':'); xlim([0, kk-N]);
title('Wyjœcie regulatora NPL'); xlabel('k'); ylabel('wartoœæ sygna³u');
legend('wyjœcie y(k)','wartoœæ zadana');
