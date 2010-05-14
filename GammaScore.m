function [ output_args ] = GammaScore(n, x, t1, t2)
%GAMMASCORE Summary of this function goes here
%   Detailed explanation goes here
%   x is a 2 dim vector (a,b), t1 is the sum of log sample, t2 is the sum
%   of the sample. n is sample size
    
    output_args    = zeros(2,1);
    
    output_args(1) = -n*log(x(2)) - n*psi(x(1)) + t1;
    output_args(2) = -n*x(1)/x(2) + t2/((x(2))^2);
    

end
