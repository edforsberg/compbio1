function nextN = DescreteGrowth(N)

K = 1E3; 
r = 0.1; 
nextN = (r+1)*N/(1+(N/K));
end