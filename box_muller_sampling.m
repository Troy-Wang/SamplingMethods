c=[]
for i=1:10000
[a,b]=box_muller();
c=[c,a,b];
end

x = -5:0.01:5;
y = normpdf(x, 0, 1);
plot(x,y);
hold on;
ksdensity(c);
