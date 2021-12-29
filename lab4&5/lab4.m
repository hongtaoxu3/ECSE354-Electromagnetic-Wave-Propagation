function [l, d] = shortedstubdesign(zL,beta)
%SHORTEDSTUBDESIGN Summary of this function goes here
%   Detailed explanation goes here
yL = 1./zL;
nGammaL = (yL-1)./(yL+1);
psi = angle(nGammaL);
psiprime = acos(abs(nGammaL));
d = (psi-psiprime)./(2*beta);
nGammaAprime = abs(nGammaL)*exp(1i*psiprime);
yA = (1+nGammaAprime)./(1-nGammaAprime);
ys = -1i*imag(yA);
nGammaSprime = (ys-1)./(ys+1);
phi = angle(nGammaSprime);
l = (-phi)./(2*beta);

end