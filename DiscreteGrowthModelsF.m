%subtask f) 
clc
clf
clear all 

timeSteps = 100; 
pertVec = [-10,-3,-2,-1,1,2,3,10];
K = 1E3; 
r = 0.1;
KStar = K*r; 
N0vec = KStar-pertVec; 

N = []; 
Nlin = []; 

i = 0; 
for N0 = N0vec
i = i+1; 
N(1,i) = N0; 
Nlin(1,i) = N0; 
for t = 1:timeSteps-1    
    N(t+1,i) = DescreteGrowth(N(t,i)); 
    Nlin(t+1,i) = LinearStability(Nlin(t,i),KStar); 
end
end
T = 1:timeSteps; 


for p = 1:4
subplot(2,2,p)
semilogx(T,N(:,p)); 
hold on 
semilogx(T,Nlin(:,p)); 
legend({'exact','linearisation'},'Location','northeast')
xlabel('t') 
ylabel('N(t)')
xlim([min(T) max(T)]); 
ylim([min(min([N(:,p) Nlin(:,p)]))-1 max(max([N(:,p) Nlin(:,p)]))+1]);
title(sprintf('Population growth, N0 = %g',N0vec(p))); 
end



    