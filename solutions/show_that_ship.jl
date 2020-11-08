using Plots

# Construct and plot lines with two points
X = [0,x_ship]
Y1 = [ys1,y_ship]
Y2 = [ys2,y_ship]

# Plot
plot(X,Y1, label = "Station 1 LOS", lw = 2, color = :green)
plot!(X,Y2, label = "Station 2 LOS", lw = 2, color = :blue) # plot! adds a new line to the existing plot
plot!([x_ship], [y_ship], marker = (:star, 10), color = :red, label = "Ship")
plot!(xlims = [0,2], ylims = [0, 2], title = "Ship Detection", xlabel = "x pos", ylabel = "y pos")

