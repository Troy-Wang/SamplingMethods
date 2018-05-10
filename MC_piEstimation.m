% sampling counts
totalCount=1000;

% variables for plot
radius=1;
n=100;
t=linspace(pi/2,0,100);
xCircle=radius*cos(t);
yCircle=radius*sin(t);

% plot
plot(xCircle,yCircle);
hold on;
plot([0,1],[1,1]);
plot([1,1],[0,1]);

% start sampling
hitCount=0;
for i=1:totalCount
    point=rand(1,2);
    dist=sqrt(point(1)^2+point(2)^2);
    if dist<=1
        hitCount=hitCount+1;
        scatter(point(1),point(2),'red','filled');
    else
        scatter(point(1),point(2),'blue','filled');
    end
end
hold off;
estimatedPi=hitCount/totalCount*4