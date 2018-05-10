function [y] = my_inverse_cdf(x,m)
y=sqrt(m^2./(1-(1-m^2)*x));