%d
R = 75;
L = 200;
C = 100;
ZL = 1./(1/R+1./(1i*w*L)+1i*w*C);
zL = ZL/Z0;
refcoeff = (zL-1)./(zL+1);
s = smithplot(f,refcoeff);