using Distributions
using StatsPlots

d = Normal(0,1)

plot(d,lw=2,title="Normal Distribution: mu=0, sigma=1")
savefig("ND.png")
