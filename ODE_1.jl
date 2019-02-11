using DifferentialEquations
using Plots
f(u,p,t) = 1.01*u
u0 = 1/2
timespan = (0.0,1.0)
problem = ODEProblem(f,u0,timespan)

sol = solve(problem)
plot(sol)
savefig("ODE_1.png")
