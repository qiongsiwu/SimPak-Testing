function [ output_args ] = GammaMLE(x, t1, t2, n, Tolerance)
%GAMMAMLE Summary of this function goes here
%   Detailed explanation goes here
%   x is a 2 dim vector (a, b)

    x_temp = x;
    tol    = 10000000000;

    
    while tol > Tolerance
        
        x_new  = x_temp + inv(GammaInfo(n, x_temp, t2)) * GammaScore(n, x_temp, t1,t2);
        
        tol    = max (abs(x_new-x_temp));
        
        x_temp = x_new;       
        
    end
    
    output_args = x_temp;


end
