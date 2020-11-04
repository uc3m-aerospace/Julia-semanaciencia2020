using Plots

# Define the Lorenz attractor
dt = 0.02
σ  = 10
ρ  = 28
β  = 8/3
x0  = 1
y0  = 1
z0  = 1

function step!(x,y,z)
    dx = σ * (y - x);         x += dt * dx
    dy = x * (ρ - z) - y;     y += dt * dy
    dz = x * y - β * z;       z += dt * dz
    return x,y,z
end

# initialize a 3D plot with 1 empty series
theme(:dark)
plt = plot3d(
    1,
    xlim = (-30, 30),
    ylim = (-30, 30),
    zlim = (0, 60),
    title = "Lorenz Attractor",
    marker = 2,
)

# build an animated gif by pushing new points to the plot, saving every 10th frame
@gif for i=1:1500

    if i == 1
        x,y,z = step!(x0,y0,z0)
    else
        x,y,z = step!(x,y,z)
    end

    push!(plt, x, y, z)
end every 5