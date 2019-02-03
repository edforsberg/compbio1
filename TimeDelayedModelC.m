% c)
clc
clear all

N0 = 50;  
dt = 0.1; 
timeSteps = 100/dt; 

for T = 0.1:0.1:5
    Nvec =  populationProgression(dt, T, timeSteps, N0); 
    Ntops = [];
    for i = 2:numel(Nvec)-1
       if (Nvec(i-1) < Nvec(i) && Nvec(i) > Nvec(i+1))
           Ntops(end+1) = Nvec(i); 
       end
    end
    if (numel(Ntops) > 1 && Ntops(end) > Ntops(end-1))
        Th = T; 
        break
    end
end
disp(Th); 