function [omega] = potentialCalc(y,mu)
% FUNCTION NAME:
%     potentialCalc  
% 
% DESCRIPTION:
%     calculate CR3BP pseudopotential given position and mass ratio
% 
% INPUT:
%     y - (array) state vector containing position and velocity
%     mu - (double) mass ratio of CR3BP system
% 
% OUTPUT: 
%     omega - (double) pseudopotential of third body with state y in system described by mu
x2 = y(:,1).^2;
y2 = y(:,2).^2;
d = sqrt((y(:,1)+mu).^2+y(:,2).^2+y(:,3).^2);
r = sqrt((y(:,1)-1+mu).^2+y(:,2).^2+y(:,3).^2);
omega = ((1-mu)./d) + (mu./r) + ((x2+y2)/2);
end
