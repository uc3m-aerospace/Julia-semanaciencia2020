using Plots

function Lorenz(x0,y0,z0,σ,ρ,β,dt,N)
    """
    This function solves the Lorenz equations numerically and returns the solution vectors X,Y,Z

        x0,y0,z0: Initial conditions at t=0
        σ,ρ,β: Lorenz equations parameters
        dt: time step for the Euler method
        N: number of steps to integrate
    """

    # Initialize the vectors
    X = zeros(N)
    Y = zeros(N)
    Z = zeros(N)

    # First values are the initial conditions
    X[1] = x0
    Y[1] = y0
    Z[1] = z0

    # Advance the solution up to N times
    for i = 2:N 
        X[i] = X[i-1] + (σ * (Y[i-1] - X[i-1])) * dt
        Y[i] = Y[i-1] + (X[i-1] * (ρ - Z[i-1]) - Y[i-1]) * dt
        Z[i] = Z[i-1] + (X[i-1] * Y[i-1] - β * Z[i-1]) * dt 
    end

    return X,Y,Z

end

# Call the Lorenz function with N = 1500
(X,Y,Z) = Lorenz(1,1,1,10,28,8/3,0.02,1500)

# Create 3D plot
plt = plot3d(
    X,Y,Z,
    xlim = (-35, 35),
    ylim = (-35, 35),
    zlim = (0, 65),
    title = "Lorenz Attractor",
    marker = 2,
)

# Bonus: create a Gif! (may take some time)
plt2 = plot3d( # Prepare empty plot
    1,
    xlim = (-30, 30),
    ylim = (-30, 30),
    zlim = (0, 60),
    title = "Lorenz Attractor",
    marker = 2,
)

@gif for i=1:1500 # Push data point to the plot and take an image every 5 steps
    push!(plt2, X[i], Y[i], Z[i])
end every 5