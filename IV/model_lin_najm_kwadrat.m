clear all

    load('dane_weryfikujace.txt');
    u=dane_weryfikujace(:,1);
    y=dane_weryfikujace(:,2);

% if ucz1_wer2==2
%     load('dane_weryfikujace.txt');
%     u=dane_weryfikujace(:,1);
%     y=dane_weryfikujace(:,2);
% end
S=length(u);
M=[u(2:S-4) u(1:S-5) y(5:S-1) y(4:S-2)];
Y=y(6:S);
w=M\Y;