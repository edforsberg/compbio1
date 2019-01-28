function Ndot = AlleeGrowth(T,Nvec,dt)

r = 0.1; 
A = 20; 
K = 100;  
if (T/dt >= numel(Nvec)) 
    Tao = 1; 
else
    Tao = round(numel(Nvec)-T/dt+1); 
end
a = r*Nvec(end);
try 
b = 1-Nvec(Tao)/K; 
catch 
    dwdew = 1; 
end
c = Nvec(end)/A-1; 
Ndot = a*b*c;
% Ndot = r*Nvec(end)*(1-(Nvec(Tao)/K))*(Nvec(end)/A-1); 
end