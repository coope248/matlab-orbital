function [omega] = potentialCalc(y,mu)
x2 = y(:,1).^2;
y2 = y(:,2).^2;
d = sqrt((y(:,1)+mu).^2+y(:,2).^2+y(:,3).^2);
r = sqrt((y(:,1)-1+mu).^2+y(:,2).^2+y(:,3).^2);
omega = ((1-mu)./d) + (mu./r) + ((x2+y2)/2);
