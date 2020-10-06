%% 2018 Jan 09. made by Sungman Jo

function [b1,b0] = linear_reg_bspl(x,y)

mean_x = mean(x);
mean_y = mean(y);

Sxy = sum((x - mean_x) .* (y - mean_y));
Sxx = sum((x - mean_x).^2);
Syy = sum((y - mean_y).^2);

b1 = Sxy / Sxx;
b0 = mean_y - b1*mean_x;

r_sqr = 1- (sum((y - (b1*x+b0)).^2)/Syy)

xt = linspace(min(x),max(x),100);
ft = b1 * xt + b0;

hold on;plot(xt, ft, 'LineWidth',5);
end