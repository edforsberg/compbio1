function Nlinear = LinearStability(N)

K = 1E3; 
r = 0.1; 
b = 1; 

Nlinear = N+(r+1)/((N/K)+1)^2; 

end