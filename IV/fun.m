function f = fun(x)
global k N Nu lambda u y yzad d
%model8
global w10 w1 w20 w2
j=1;
for p=0:Nu-1
   u(1,k+p)=x(1,j); j=j+1;
end

for p=0:Nu-1
    du(1,k+p)=u(1,k+p)-u(1,k+p-1); j=j+1;
end
for p = Nu:N
   u(1,k+p) = u(1,k+Nu-1); 
end
for p=1:N
    wesn=[u(1,k-4+p) u(1,k-5+p) y(1,k-1+p) y(1,k-2+p)]';
    y(1,k+p)=w20+w2*tanh(w10+w1*wesn) + d;
end

% suma_y=0;
% for p=1:N
%    suma_y=suma_y+(yzad(k)-y(k+p))^2;
% end
% 
% suma_du=0;
% for p=0:Nu-1
%     suma_du=suma_du+lambda*(du(k+p))^2;
% end
f=0;
for p=1:N
   f=f+(yzad(1,k)-y(1,k+p)).^2; 
end
for p=0:Nu-1
   f=f+lambda*(du(1,k+p)).^2; 
end

%f = suma_y+suma_du;
end