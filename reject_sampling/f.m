function y=f(x)
if (0<=x) && (x<0.25)
    y=8*x;
elseif (0.25<=x) && (x<1)
    y=8/3-8/3*x;
else
    y=0;
end