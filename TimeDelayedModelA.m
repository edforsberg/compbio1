% Time delayed model with Allee effect 
% a)
clc
clf
clear all
N0 = 50; 
Nvec(1) = N0; 
dt = 0.1; 
T = 1.2;
timeSteps = 100/dt; 
for i = 1:timeSteps
    
    Ndot = AlleeGrowth(T,Nvec,dt); 
    Nvec(i+1) = Nvec(i)+Ndot*dt; 
    
end

Nshift = circshift(Nvec,-1); 
timeVec = linspace(0, timeSteps*dt, numel(Nvec)); 
plot(timeVec, Nvec);
ylim([N0 max(Nvec)+5])
xlim([0 numel(Nvec)*dt])

%%scatter(Nshift(2:end-1), Nvec(2:end-1),4,'filled'); 
    