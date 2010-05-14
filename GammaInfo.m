function [ output_args ] = GammaInfo(n, x, t2)
%GAMMAINFO Summary of this function goes here
%   Detailed explanation goes here
%   x is a 2 dim vector (a, b) t2 is the sum of the sample; n is the sample
%   size

    output_args      = zeros(2);
    
    output_args(1,1) = n*psi(1,x(1));
    output_args(1,2) = n/x(2);
    output_args(2,1) = n/x(2);
    output_args(2,2) = -n*x(1)/((x(2))^2) + 2*t2/((x(2))^3);    

end
