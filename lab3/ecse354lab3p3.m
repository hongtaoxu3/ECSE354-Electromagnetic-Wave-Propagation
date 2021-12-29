Z0 = 75;
Vp = 2*10^8;
l = 0.25;
f = 10^6:10^6:300*10^6;
L = 200*10^(-9);
R = 75;
C = 100 * 10^(-12);

%ZL = 15;                                                               %p3
%ZL = 1i*2*pi*f*L;                                                      %p4
ZL = R + 1i*2*pi*f*L + 1./(1i*2*pi*f*C);                               %p5
zL = ZL/Z0;
beta = 2*pi*f/Vp;
theta = 2*beta*l;


[Gamma] = refcoeff(zL);
[Gammarot] = rotrefcoeff(Gamma, theta);
[zin] = inputz(Gamma, theta);

s = smithplot(f, Gammarot);
%h = plot(f,real(zin),f,imag(zin));
%legend('real(zin)','imag(zin)');
%axis([0 3*10^8 -15 15]);  %p4