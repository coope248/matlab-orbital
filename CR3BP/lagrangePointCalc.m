function [xs,ys] = lagrangePointCalc(mu)
secHillRad = ((1/3) * mu)^(1/3);
g1=1;
g2=1;
 
for c=1:5000
    g1 = g1 - (((1/3) * secHillRad)^c);
    g2 = g2 - ((-1^c)*(((1/3) * secHillRad)^c));
end
g1 = secHillRad * g1;
g2 = secHillRad * g2;
 
xL1 = (1 - mu) - g1;
yL1 = 0;
 
xL2 = (1 - mu) + g2;
yL2 = 0;
 
xL3 = -(1+(5 * mu/12));
yL3 = 0;
 
xL4 = .5 - mu;
yL4 = sqrt(3) / 2;
 
xL5 = xL4;
yL5 = -yL4;
 
xs=[xL1,xL2,xL3,xL4,xL5]';
ys=[yL1,yL2,yL3,yL4,yL5]';
end
