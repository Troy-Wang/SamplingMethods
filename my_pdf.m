function [y] = my_pdf(x,m)
y=2*m^2/(1-m^2)./power(x,3);