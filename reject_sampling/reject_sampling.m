c = [];

for i=1:100000
x_i = unifrnd(0,1,1,1);
accept_prob = f(x_i)/(2*f2(x_i));
p_ = unifrnd(0,1,1,1);
if p_ < accept_prob
    c=[c,x_i];
end
end

x = linspace(0,1);
plot(x,arrayfun(@f,x));
hold on;
ksdensity(c);

    