%uczenie statycznego modelu neuronowego o jednym wej�ciu i jednym wyj�ciu: 
%sie� RBF o jednej warstwie ukrytej, automatyczny dob�r liczby neuron�w
%ukrytych dla b�edu dopuszczalnego (edopuszcz)
clear all;

load dane_ucz;

edopuszcz=0.001;

%net = newrb(P,T,goal,spread,MN,DF)
%performFcn
sn=newrb(x_ucz,y_ucz,edopuszcz,1,20,1);%,'performFcn','sse');

ymod_ucz=sn(x_ucz);

Eucz=(ymod_ucz-y_ucz)*(ymod_ucz-y_ucz)';

figure;
plot(x_ucz,y_ucz,'.b','MarkerSize',14);
hold on;
plot(x_ucz,ymod_ucz,'or');
xlabel('x');
ylabel('y');
title(sprintf('Dane ucz�ce, Eucz=%e',Eucz))
legend('Dane ucz�ce','Wyj�cie modelu')

figure;
plot(y_ucz,ymod_ucz,'.b','MarkerSize',14);
xlabel('Dane ucz�ce');
ylabel('Model');
title(sprintf('Eucz=%e',Eucz))

load dane_wer;

ymod_wer=sn(x_wer);

Ewer=(ymod_wer-y_wer)*(ymod_wer-y_wer)';

figure;
plot(x_wer,y_wer,'.b','MarkerSize',14);
hold on;
plot(x_wer,ymod_wer,'or');
xlabel('x');
ylabel('y');
title(sprintf('Dane weryfikuj�ce, Ewer=%e',Ewer))
legend('Dane weryfikuj�ce','Wyj�cie modelu')

figure;
plot(y_wer,ymod_wer,'.b','MarkerSize',14);
xlabel('Dane weryfikuj�ce');
ylabel('Model');
title(sprintf('Ewer=%e',Ewer))





