V0 = 1;
j = sqrt(-1);
beta = 2*pi/0.20;
omega = 2*pi*10^9;
phi = 0;
Z0 = 50;
Vp = 2*10^8;
t = 0:5*10^(-11):5*10^(-9);
z = 0:0.004:0.4;
V = j*exp(j*beta*z);


vf = V0*cos(omega*(t-z/Vp)+phi);
vb = V0*cos(omega*(t+z/Vp)+phi);
If = V0/Z0*cos(omega*(t-z/Vp)+phi);
ib = -V0/Z0*cos(omega*(t+z/Vp)+phi);
vs = vf + vb;
is = If + ib;
v = real(V.*exp(j*omega*t));

for k=1:length(t)
plot(z, vf(k,:),'b'); hold on;
plot(z, vs(k,:),'g'); hold on;
plot(z, is(k,:),'y'); hold on;
plot(z, vb(k,:),'r'); hold off;
xlabel('z [m]');
ylabel('v(z,t)[V]');
title('instantaneous voltage on a lossless line'); legend('v_f(z,t)',' v_b(z,t)');
axis([0 4 -1 1]);
M(k)=getframe;

[vf, If] = forward_wave(V0,omega,phi,Z0,Vp,z,t)
[vb, ib] = backward_wave(V0,omega,phi,Z0,Vp,z,t)
[ v ] = ph2inst(V,omega,t)

end;





    
