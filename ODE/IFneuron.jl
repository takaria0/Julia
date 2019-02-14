using DifferentialEquations
using Plots

tau = 1.0
I = 1.0
R = 1.0

p = [tau,I,R]

function neuron(du,u,p,t)
    if u[1] < -30
        du[1] = (-u[1] + p[2]*p[3]) / p[1]
    else
        u[1] = -65
    end
end

u0 = [-65.0]
tspan = (0.0,10.0)
prob = ODEProblem(neuron,u0,tspan,p)
sol = solve(prob,reltol = 1e-8)

plot(sol)
savefig("I&F.png")
