function [eps_norm_H201] = purewatereps2(f)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
eps_norm_H201 = 5.2 + 73.1./(1+1i*2*pi*f*8.3)+(4/78.3)./(1i*2*pi*f);

end