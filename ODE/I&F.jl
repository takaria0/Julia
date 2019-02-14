using DifferentialEquations
using Plots


function neuron(dV,V,R,I)
    if v < -30
        1*(dV) =  -V + 1I
    else
        V = -65
    end
end

v0 = -65
tspan = (0,100)
prob = ODEProblem(neuron,v0,tspan)
sol = solve(prob)

plot(sol)
savefig("I&F.png")
