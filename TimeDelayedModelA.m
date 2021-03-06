% Time delayed model with Allee effect 
% a)
clc
clf
clear all


N0 = 50;  
dt = 0.01; 
timeSteps = 1000; 
T = 0.5;

Nvec = populationProgression(dt, T, timeSteps, N0); 

Nshift = circshift(Nvec,-1/dt); 
timeVec = linspace(0, timeSteps*dt, numel(Nvec)); 
plot(timeVec, Nvec);
xlim([0 numel(Nvec)*dt]);
ylim([N0 max(Nvec)+5]);



    