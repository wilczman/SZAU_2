clear all;

ucz1_wer2=1; %1-ucz¹ce, 2-weryfikuj¹ce

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

figure;
stairs(y)
hold on;title('arx');ylabel('y');xlabel('k');
stairs(ymod_arx);

figure;
stairs(y)
hold on;title('oe');ylabel('y');xlabel('k');
stairs(ymod_oe);

figure;
plot(y,ymod_arx,'.b');
title('arx');ylabel('y');xlabel('y arx');

figure;
plot(y,ymod_oe,'.b');
title('oe');ylabel('y');xlabel('y oe');


%% 2. test modelu
