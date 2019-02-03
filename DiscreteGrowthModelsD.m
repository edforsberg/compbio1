timeSteps = 1000; 
N0 = 10;

N = []; 
Nlin = []; 
N(1) = N0; 
Nlin(1) = N0; 

for t = 1:timeSteps    
    N(t+1) = DescreteGrowth(N(t)); 
    Nlin(t+1) = LinearStability(Nlin(t)); 
end
T = 1:timeSteps+1; 

loglog(T,N); 
hold on 
loglog(T,Nlin); 
legend({'exact','linearisation'},'Location','northwest')
xlabel('t') 
ylabel('N(T)')
title('Population growth, N0 = 0')



    