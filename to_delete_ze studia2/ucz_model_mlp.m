%uczenie statycznego modelu neuronowego o jednym wej�ciu i jednym wyj�ciu: 
%sie� MLP o jednej warstwie ukrytej zawieraj�cej K neuron�w
clear all;
load dane_ucz;

K=10;%liczba neuron�w ukrytych
%alguczenia='traingd';%alg. najszybszego spadku
alguczenia='trainlm';%alg. Levenberga-Marquardta
%alguczenia='trainbfg';%alg. zmiennej metryki BFGS
%alguczenia='traincgf';%alg. gradient�w sprz�onych Fletchera-Reevesa
%alguczenia='traincgp';%alg. gradient�w sprz�onych Poljaka-Polaka-Ribiery
sn=newff(minmax(x_ucz),[K,1],{'tansig','purelin'},alguczenia);

%sn.performFcn ='mae';%suma modu��w b��d�w/liczba pr�bek
%sn.performFcn ='mse';%suma kwadrat�w b��d�w/liczba pr�bek
sn.performFcn ='sse';%suma kwadrat�w b��d�w
sn.trainParam.show =10;
sn.trainParam.showCommandLine=1;
sn.trainParam.epochs=200;
sn.trainParam.goal=0.0001;
sn.trainParam.showWindow=0;
[sn,uczenie]=train(sn,x_ucz,y_ucz);

ymod_ucz=sim(sn,x_ucz);

Eucz=(y_ucz-ymod_ucz)*(y_ucz-ymod_ucz)';

semilogy(uczenie.perf,'b');
xlabel('Iteracje ucz�ce');
ylabel('Eucz');

figure;
plot(x_ucz,y_ucz,'.b','MarkerSize',14);
hold on;
plot(x_ucz,ymod_ucz,'or');
xlabel('x');
ylabel('y');
legend('Dane','Model');
title(sprintf('Dane ucz�ce, Eucz=%e',Eucz))

figure;
plot(y_ucz,ymod_ucz,'.b','MarkerSize',14);
xlabel('Dane ucz�ce');
ylabel('Model');
title(sprintf('Eucz=%e',Eucz));


load dane_wer;

ymod_wer=sim(sn,x_wer);

Ewer=(y_wer-ymod_wer)*(y_wer-ymod_wer)';

figure;
plot(x_wer,y_wer,'.b','MarkerSize',14);
hold on;
plot(x_wer,ymod_wer,'or');
xlabel('x');
ylabel('y');
legend('Dane','Model');
title(sprintf('Dane weryfikuj�ce, Ewer=%e',Ewer))

figure;
plot(y_wer,ymod_wer,'.b','MarkerSize',14);
xlabel('Dane weryfikuj�ce');
ylabel('Model');
title(sprintf('Ewer=%e',Ewer));





