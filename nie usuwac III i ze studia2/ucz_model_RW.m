%uczenie statycznego modelu neuronowego o jednym wejœciu i jednym wyjœciu: 
%sieæ MLP o jednej warstwie ukrytej zawieraj¹cej K neuronów
clear all;


load('dane.txt');
x_ucz_raw=dane(:,1);
y_ucz_raw=dane(:,2);
y_ucz=y_ucz_raw;

tau=4;
%przypisanie do inputa sieci neuronowej danych uczacych kolejno: u(k-tau) u(k-tau-1) y(k-1) y(k-2)
%bo mamy miec cztery wejscia
x_ucz(1,:) = [zeros(1, tau) x_ucz_raw(1:end-tau,1)'];
x_ucz(2,:) = [zeros(1, tau+1) x_ucz_raw(1:end-(tau+1),1)'];
x_ucz(3,:) = [0 y_ucz_raw(1:end-1,1)'];
x_ucz(4,:) = [0 0 y_ucz_raw(1:end-2,1)'];
x_ucz=x_ucz';


K=8;%liczba neuronów ukrytych
%alguczenia='traingd';%alg. najszybszego spadku
alguczenia='trainlm';%alg. Levenberga-Marquardta
%alguczenia='trainbfg';%alg. zmiennej metryki BFGS
%alguczenia='traincgf';%alg. gradientów sprzê¿onych Fletchera-Reevesa
%alguczenia='traincgp';%alg. gradientów sprzê¿onych Poljaka-Polaka-Ribiery
sn=feedforwardnet(K,alguczenia);

%liczba wejsc
sn.numInputs=4;
%sn.performFcn ='mae';%suma modu³ów b³êdów/liczba próbek
%sn.performFcn ='mse';%suma kwadratów b³êdów/liczba próbek
sn.performFcn ='sse';
sn.trainParam.show = 10;
sn.trainParam.showCommandLine = 1;
sn.trainParam.epochs = 500;
sn.trainParam.goal = 0.0001;
sn.trainParam.showWindow = 0;

%dane: tylko zbiór ucz¹cy
sn.divideFcn = 'divideind';
sn.divideParam.trainInd = [1:length(y_ucz)];
sn.divideParam.valInd = [];
sn.divideParam.testInd = [];

%sn.input{1}.processFcns = { };
%sn.input{2}.processFcns = { };
%sn.input{3}.processFcns = { };
%sn.input{4}.processFcns = { };
sn.output.processFcns= { };

[sn,uczenie]=train(sn,x_ucz,y_ucz);

ymod_ucz=sim(sn,x_ucz);

Eucz=(y_ucz-ymod_ucz)*(y_ucz-ymod_ucz)';

semilogy(uczenie.perf,'b');
xlabel('Iteracje ucz¹ce');
ylabel('Eucz');

figure;
plot(x_ucz,y_ucz,'.b','MarkerSize',14);
hold on;
plot(x_ucz,ymod_ucz,'or');
xlabel('x');
ylabel('y');
legend('Dane','Model');
title(sprintf('Dane ucz¹ce, Eucz=%e',Eucz))

figure;
plot(y_ucz,ymod_ucz,'.b','MarkerSize',14);
xlabel('Dane ucz¹ce');
ylabel('Model');
title(sprintf('Eucz=%e',Eucz));


%load dane_wer;

load('dane_weryfikujace.txt');
x_wer=dane_weryfikujace(:,1);
y_wer=dane_weryfikujace(:,2);

ymod_wer=sim(sn,x_wer);

Ewer=(y_wer-ymod_wer)*(y_wer-ymod_wer)';

figure;
plot(x_wer,y_wer,'.b','MarkerSize',14);
hold on;
plot(x_wer,ymod_wer,'or');
xlabel('x');
ylabel('y');
legend('Dane','Model');
title(sprintf('Dane weryfikuj¹ce, Ewer=%e',Ewer))

figure;
plot(y_wer,ymod_wer,'.b','MarkerSize',14);
xlabel('Dane weryfikuj¹ce');
ylabel('Model');
title(sprintf('Ewer=%e',Ewer));





