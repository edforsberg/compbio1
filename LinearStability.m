function Nlinear = LinearStability(N, Nstar)
K = 1E3;
r = 0.1;
b = 1;
Nlinear = Nstar+((r+1)/((Nstar/K)+1)^2)*(N-Nstar);
end