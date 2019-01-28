% b)
clc
clear all

N0 = 50;  
dt = 0.1; 
timeSteps = 100/dt; 

for T = 0.1:0.1:5    
    Nvec =  populationProgression(dt, T, timeSteps, N0); 
    if (max(Nvec)>Nvec(end)) 
        Tosc = T; 
        break
    end 
end
disp(Tosc); 
