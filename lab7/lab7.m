close all;
clear all;

eps0 = 8.854e-12;
mu0 = 4*pi*1e-7;
c = 1/sqrt(mu0*eps0);
t = (0:0.3:33)*1e-9; 
z = -2:0.01:10;

E0 = 1;
omega0 = 2*pi*1e9; 
domega = omega0/60; 
for n = 1:41;
    omega(n) = omega0+(n-21)*domega; 
end;
% vacuum dispersion 
%beta = 1.5*omega/c
beta = omega/c %(10-0)/(33ns) = 3.03*10^8
%beta = 1.5*omega/c.*(1-omega/(16*pi*10^9));
%beta = 1.5*omega/c.*(1+omega/(16*pi*10^9));

for m=1:length(t); 
    E=zeros(1,length(z)); 
    for n = 1:41;
        Etemp=E0*cos( omega(n)*t(m) - beta(n)*z );
        E=E+Etemp; 
    end;
plot(z, E);
axis( [ -2 +10 -50 +50 ] );
xlabel("z [m]");
ylabel("E(z,t)[V/m]");
title("instantaneous field, \beta = \omega / c"); 
M(m)=getframe;
end; 

movie2gif(M,"vacuum.gif")