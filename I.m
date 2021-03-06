clear all;

%% 1.parametry
alfa1 = -1.413505;
alfa2 = 0.462120;
beta1 = 0.016447;
beta2 = 0.012722;

%% 1.charakterystyka statyczna
u=-1:0.01:1;
y=zeros(1,length(u));
for n=1:length(u)
   % y(u)=3*exp(-x(n)*0.5)*sin(2*x(n))+3*exp(-x(n)*0.25)*cos(2*x(n))+0.035*x(n)^2+0.0001*x(n)^4;
    y(n) = g2( (g1(u(n))*(beta1+beta2)) / (1+alfa1+alfa2) );
end

%% 1.plot charakterystyki statycznej
figure;
plot(u,y,'.b','markersize',14);ylabel('sygna� wyj�ciowy y');xlabel('sygna� steruj�cy u');
title('Charakterystyka statyczna - 200 pr�bek');
% x_ucz=x; y_ucz=y; 
% save char_stat u y

%% 2.generowanie danych ucz�cych i weryfikuj�cych
wer1_ucz2 = 2; %parametr do zmiany
kp = 5; kk = 2000;
u(1:kp-1)=0; y(1:kp-1)=0;
x1(1:kp-1)=0; x2(1:kp-1)=0;
if wer1_ucz2 == 1 
    rand('seed',5);
end
if wer1_ucz2 == 2
    rand('seed',10);
end  
wart = 2*(rand(1,1)-0.5);
for k=5:kk
    if mod(k,50)==0
        wart=2*(rand(1,1)-0.5 );
    end
    u(k)=wart;
end
figure;
plot(u);xlabel('nr pr�bki k');ylabel('sygna� steruj�cy u');
title('Dane ucz�ce - 2000 pr�bek');

for k=kp:kk
    x1(k) = -alfa1*x1(k-1)+x2(k-1)+beta1*g1(u(k-4));
    x2(k) = -alfa2*x1(k-1)+beta2*g1(u(k-4));
    y(k) = g2(x1(k));
end

%% 2.plot danych ucz�cych i weryfikuj�cych
figure;
plot(y);xlabel('nr pr�bki k');ylabel('sygna� wyj�ciowy y');
if wer1_ucz2 == 1
    title('Dane weryfikuj�ce - 2000 pr�bek');
    u_wer=u; y_wer=y; 
%     save dane_wer u_wer y_wer
else
    title('Dane ucz�ce - 2000 pr�bek');
    u_ucz=u; y_ucz=y; 
%     save dane_ucz u_ucz y_ucz
end

%% 2.zapisz do .txt
if wer1_ucz2 == 1
    fid=fopen('dane_weryfikujace.txt','w');
    fprintf(fid, '%e %e\r\n', [u(:) y(:)]');
    fclose(fid);
end
if wer1_ucz2 == 2
    fid=fopen('dane.txt','w');
    fprintf(fid, '%e %e\r\n', [u(:) y(:)]');
    fclose(fid);
end
