θ1  = 25
θ2  = 55
ys1 = 1
ys2 = 0

A = [-tand(θ1) 1; -tand(θ2) 1]
c = [ys1; ys2]

(xb, yb) = A \ c  # Otra opción: A^-1 * c

using Plots

theme(:dark)
plot( x-> tand(θ1)x + ys1, label = "Station 1", lw = 2, color = :green)
plot!(x-> tand(θ2)x + ys2, label = "Station 2", lw = 2, color = :blue)
plot!([xb], [yb], marker = (:star, 10), color = :red, label = "Boat")
plot!(xlims = [0,2], ylims = [0, 2], title = "Boat Detection", xlabel = "x pos", ylabel = "y pos")

