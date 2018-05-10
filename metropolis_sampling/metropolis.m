round = 10000;
x=(chi2rnd(1));
u=unifrnd(0,1,1,round);

sigma = 1;
acceptCount=0;

for i=1:round
    xt=x(i);
    y=chi2rnd(xt);
    acceptRate=raylpdf(y,sigma)*chi2pdf(xt,y)/(raylpdf(xt,sigma)*chi2pdf(y,xt));
    if u(i) < min(acceptRate,1)
        x=[x,y];
    else
        x=[x,xt];
        acceptCount=acceptCount+1;
    end
end

% plot rayleigh distribution pdf
xPlot=(0:0.01:4);
yPlot=raylpdf(xPlot,sigma);
plot(xPlot,yPlot);
hold on;
ksdensity(x(1000:round));