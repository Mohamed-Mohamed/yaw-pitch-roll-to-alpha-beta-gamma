function [ alpha, beta, gamma ] = ypr2abg( Q )
% this function is used to get rotation angles from euler rotation matrix
%% Coded by
% Mohamed Mohamed El-Sayed Atyya
% mohamed.atyya94@eng-st.cu.edu.eg
%% INPUTS:
% Q  : ypr rotation matrix
%% OUTPUTS:
% alpha      : rotation about x
% beta        : rotation about y
% gamma   : rotation about z
% ---------------------------------------------------------------------------------------------------------------------------------------------------------
alpha=atand(Q(1,2)/Q(1,1));
if Q(1,2) < 0 && Q(1,1) > 0 && alpha <0
    alpha=alpha+360;
elseif Q(1,1) < 0 && Q(1,2) > 0 && alpha <0
    alpha=alpha+180;
elseif Q(1,2) < 0 && Q(1,1) < 0
    alpha=alpha+180;
end
beta=asind(-Q(1,3));
gamma=atand(Q(2,3)/Q(3,3));
if Q(2,3) < 0 && Q(3,3) > 0 && gamma < 0
    gamma=gamma+360;
elseif Q(3,3) < 0 && Q(2,3) > 0 && gamma < 0
    gamma=gamma+180;
elseif Q(3,3) < 0 && Q(2,3) < 0
    gamma=gamma+180;
end
end