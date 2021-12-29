Vp = 2*10^8;
l = 0.25;
Z0 = 75;
f = 10^6:10^6:300*10^6;

R = 75;
C = 10^(-10);
L = 200 * 10^(-9);

ZL = R + 1./(1i*2*pi*f*C)+ 1i*2*pi*f*L;
zL = ZL/Z0;

[Gamma] = refcoeff(zL);

s = smithplot(f, Gamma); 
s.TitleTop = 'RC circuit';




