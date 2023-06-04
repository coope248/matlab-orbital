function [t,y] = plotCR3BP(y0)
opts=odeset('RelTol',1e-12,'AbsTol',1e-12);
[t,y] = ode45(@EOMS,[0,200],y0,opts);
plot3(0,0,0,'bo')
yC = sin(linspace(0,2*pi,100))
xC = cos(linspace(0,2*pi,100))
zC = zeros(1,100)
hold on
plot3(1,0,0,'ko')
plot3(xC,yC,zC,':')
comet3(y(:,1),y(:,2),y(:,3))
axis square
hold off
end
 
function y_p = EOMS(t,y)
mu=7.35e22/(7.35e22+5.97e24);
y_p(1:3) = y(4:6);
%rho = y(1:3);
d = [y(1)+mu,y(2),y(3)];
r = [y(1)-1+mu,y(2),y(3)];
dMag3  = norm(d)^3;
rMag3 = norm(r)^3;
 
 
y_p(4) = y(1) + 2*y(5) - (((1 - mu) * (y(1)+mu)/dMag3)) - ((mu * (y(1)-1+mu))/rMag3);
y_p(5) = y(2) - 2*y(4) - (((1 - mu) * (y(2)+ 0)/dMag3)) - ((mu * (y(2)+0+ 0))/rMag3);
y_p(6) = 0    +     0  - (((1 - mu) * (y(3)+ 0)/dMag3)) - ((mu * (y(3)+0+ 0))/rMag3);
y_p = y_p';
end
