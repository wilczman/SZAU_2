%przed u¿yciem zadeklaruj rêcznie Earx_best = 1000
%% 2. test modelu
clearvars -except Earx_best Eoe_best w1_best w10_best w2_best w20_best Earx_ucz Eoe_ucz;

ucz1_wer2=2; %1-ucz¹ce, 2-weryfikuj¹ce

if ucz1_wer2==1
    load('dane.txt');
    u=dane(:,1);
    y=dane(:,2);
end

if ucz1_wer2==2
    load('dane_weryfikujace.txt');
    u=dane_weryfikujace(:,1);
    y=dane_weryfikujace(:,2);
end

model;
kp=6;
kk=length(u);

ymod_arx(1:kp-1) = y(1:kp-1);
ymod_oe(1:kp-1) = y(1:kp-1);

for k=kp:kk
    wesn_arx=[u(k-4) u(k-5) y(k-1) y(k-2)]';
    ymod_arx(k)=w20+w2*tanh(w10+w1*wesn_arx);
    
    wesn_oe=[u(k-4) u(k-5) ymod_oe(k-1) ymod_oe(k-2)]';
    ymod_oe(k)=w20+w2*tanh(w10+w1*wesn_oe);
end

Earx = (y-ymod_arx')'*(y-ymod_arx');
Eoe = (y-ymod_oe')'*(y-ymod_oe');

if Earx- Earx_best<0.001
    Earx_best = Earx;
    Eoe_best = Eoe;
    w1_best = w1;
    w10_best = w10;
    w2_best = w2;
    w20_best = w20;
    %
    load('dane.txt');
    u=dane(:,1);
    y=dane(:,2);
    
    ymod_arx(1:kp-1) = y(1:kp-1);
    ymod_oe(1:kp-1) = y(1:kp-1);
    for k=kp:kk
        wesn_arx=[u(k-4) u(k-5) y(k-1) y(k-2)]';
        ymod_arx(k)=w20+w2*tanh(w10+w1*wesn_arx);

        wesn_oe=[u(k-4) u(k-5) ymod_oe(k-1) ymod_oe(k-2)]';
        ymod_oe(k)=w20+w2*tanh(w10+w1*wesn_oe);
    end

    Earx_ucz = (y-ymod_arx')'*(y-ymod_arx');
    Eoe_ucz = (y-ymod_oe')'*(y-ymod_oe');
    
    clearvars -except Earx_best Eoe_best w1_best w10_best w2_best w20_best Earx_ucz Eoe_ucz;
%     save pkt7_best_8_neuron.mat
end

%% 4. test uczenia alg. BFGS
ucz1_wer2=2; %1-ucz¹ce, 2-weryfikuj¹ce
if ucz1_wer2==1
    load('dane.txt');
    u=dane(:,1);
    y=dane(:,2);
end

if ucz1_wer2==2
    load('dane_weryfikujace.txt');
    u=dane_weryfikujace(:,1);
    y=dane_weryfikujace(:,2);
end

model8;
kp=6;
kk=length(u);

ymod_arx(1:kp-1) = y(1:kp-1);
ymod_oe(1:kp-1) = y(1:kp-1);

for k=kp:kk
    wesn_arx=[u(k-4) u(k-5) y(k-1) y(k-2)]';
    ymod_arx(k)=w20+w2*tanh(w10+w1*wesn_arx);
    
    wesn_oe=[u(k-4) u(k-5) ymod_oe(k-1) ymod_oe(k-2)]';
    ymod_oe(k)=w20+w2*tanh(w10+w1*wesn_oe);
end

Earx = (y-ymod_arx')'*(y-ymod_arx');
Eoe = (y-ymod_oe')'*(y-ymod_oe');

%% 5. test uczenia alg. najszybszego spadku
ucz1_wer2=2; %1-ucz¹ce, 2-weryfikuj¹ce
if ucz1_wer2==1
    load('dane.txt');
    u=dane(:,1);
    y=dane(:,2);
end

if ucz1_wer2==2
    load('dane_weryfikujace.txt');
    u=dane_weryfikujace(:,1);
    y=dane_weryfikujace(:,2);
end

modelPPKT5_8neuronow;
kp=6;
kk=length(u);

ymod_arx(1:kp-1) = y(1:kp-1);
ymod_oe(1:kp-1) = y(1:kp-1);

for k=kp:kk
    wesn_arx=[u(k-4) u(k-5) y(k-1) y(k-2)]';
    ymod_arx(k)=w20+w2*tanh(w10+w1*wesn_arx);
    
    wesn_oe=[u(k-4) u(k-5) ymod_oe(k-1) ymod_oe(k-2)]';
    ymod_oe(k)=w20+w2*tanh(w10+w1*wesn_oe);
end

Earx = (y-ymod_arx')'*(y-ymod_arx');
Eoe = (y-ymod_oe')'*(y-ymod_oe');

%% 7. test uczenia z ARX
ucz1_wer2=2; %1-ucz¹ce, 2-weryfikuj¹ce
if ucz1_wer2==1
    load('dane.txt');
    u=dane(:,1);
    y=dane(:,2);
end

if ucz1_wer2==2
    load('dane_weryfikujace.txt');
    u=dane_weryfikujace(:,1);
    y=dane_weryfikujace(:,2);
end

modelPPKT7_8neuronow;
kp=6;
kk=length(u);

ymod_arx(1:kp-1) = y(1:kp-1);
ymod_oe(1:kp-1) = y(1:kp-1);

for k=kp:kk
    wesn_arx=[u(k-4) u(k-5) y(k-1) y(k-2)]';
    ymod_arx(k)=w20+w2*tanh(w10+w1*wesn_arx);
    
    wesn_oe=[u(k-4) u(k-5) ymod_oe(k-1) ymod_oe(k-2)]';
    ymod_oe(k)=w20+w2*tanh(w10+w1*wesn_oe);
end

Earx = (y-ymod_arx')'*(y-ymod_arx');
Eoe = (y-ymod_oe')'*(y-ymod_oe');

%% 8. test MNK model + plot
clearvars -except Earx_best Eoe_best w1_best w10_best w2_best w20_best Earx_ucz Eoe_ucz;
load('dane.txt');
u=dane(:,1);
y=dane(:,2);
S=length(u);
M=[u(2:S-4) u(1:S-5) y(5:S-1) y(4:S-2)];
Y=y(6:S);
w=M\Y;

ymod_mnk(1:5)=y(1:5);
for k=6:S
    ymod_mnk(k)=w(1)*u(k-4)+w(2)*u(k-5)+w(3)*ymod_mnk(k-1)+w(4)*ymod_mnk(k-2);
end
Emnk = (y-ymod_mnk')'*(y-ymod_mnk');

figure;
stairs(y)
hold on;title(sprintf('MNK E=%f',Emnk));ylabel('y');xlabel('k');
stairs(ymod_mnk);

figure;
plot(y,ymod_mnk,'.b');
title(sprintf('MNK E=%f',Emnk));ylabel('y');xlabel('y mnk');


%% plot
figure;
stairs(y)
hold on;title(sprintf('Arx E=%f',Earx));ylabel('y');xlabel('k');
stairs(ymod_arx);

figure;
stairs(y)
hold on;title(sprintf('OE E=%f',Eoe));ylabel('y');xlabel('k');
stairs(ymod_oe);

figure;
plot(y,ymod_arx,'.b');
title(sprintf('Arx E=%f',Earx));ylabel('y');xlabel('y arx');

figure;
plot(y,ymod_oe,'.b');
title(sprintf('OE E=%f',Eoe));ylabel('y');xlabel('y oe');
