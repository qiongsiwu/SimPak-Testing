function [ output_args ] = GammaFisherInfo(n, x)
%GAMMAFISHERINFO Summary of this function goes here
%   Detailed explanation goes here

    output_args      = zeros(2);
    
    output_args(1,1) = n*psi(1,x(1));
    output_args(1,2) = n/x(2);
    output_args(2,1) = n/x(2);
    output_args(2,2) = n*x(1)/((x(2))^2);  


end
