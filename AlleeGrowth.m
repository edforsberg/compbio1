function Ndot = AlleeGrowth(T,Nvec,dt)

r = 0.1; 
A = 20; 
K = 100;  
if (T/dt >= numel(Nvec)) 
    Tao = 1; 
else
    Tao = round(numel(Nvec)-T/dt)+1; 
    Tao = cast(Tao,'int8');
end
a = r*Nvec(end);

b = 1-Nvec(Tao)/K; 

c = Nvec(end)/A-1; 
Ndot = a*b*c;
end