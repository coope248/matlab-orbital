function [J] = jacobiCalc(y,mu)
v2 = norm(y(:,4:6)).^2;
J = 2*potentialCalc(y,mu) - v2;
 
end
