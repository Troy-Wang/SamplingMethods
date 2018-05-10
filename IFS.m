samplingY=sort(unifrnd(0,1,1,100000));
m=0.5;
samplingX=my_inverse_cdf(samplingY,m)
x=sort(unifrnd(m,1,1,100));
y=my_pdf(x,m);
[f,sx]=ksdensity(samplingX,m:0.01:1);
plot(sx,f);
hold on;
plot(x,y);