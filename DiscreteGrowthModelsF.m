%subtask d) 
timeSteps = 1000; 
N0vec = [1,2,3,10];

N = []; 
Nlin = []; 

i = 0; 
for N0 = N0vec
i = i+1; 
N(1,i) = N0; 
Nlin(1,i) = N0; 
for t = 1:timeSteps-1    
    N(t+1,i) = DescreteGrowth(N(t,i)); 
    Nlin(t+1,i) = LinearStability(Nlin(t,i)); 
end
end
T = 1:timeSteps; 

for p = 1:4
subplot(2,2,p)
loglog(T,N(:,p)); 
hold on 
loglog(T,Nlin(:,p)); 
legend({'exact','linearisation'},'Location','northwest')
xlabel('t') 
ylabel('N(t)')
title(sprintf('Population growth, N0 = %g',N0vec(p))); 
end



    