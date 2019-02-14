using DifferentialEquations
using Plots

tau = 1
I = 1.5
R = 1


p = [tau,I,R]

function fun(du,u,p,t)
    if u[1] < -30
        du[1] = 1/p[1](-u[1] + p[2]*p[3])
    else
        u = -65
    end


end

u0 = [-65]
tspan = (0.0,100)
prob = ODEProblem(fun,u0,tspan,p)

sol = solve(prob,reltol = 1e-8)


plot(sol)
savefig("ODE_3_1.png")
