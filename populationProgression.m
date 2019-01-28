function Nvec = populationProgression(dt, T, timeSteps, N0)

Nvec(1) = N0; 

for i = 1:timeSteps    
    Ndot = AlleeGrowth(T,Nvec,dt); 
    Nvec(i+1) = Nvec(i)+Ndot*dt;     
end

end