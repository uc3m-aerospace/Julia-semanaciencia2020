# Data of the problem
θ1  = 25
θ2  = 55
ys1 = 1
ys2 = 0

# Construct the matrix and independent vector
A = [-tand(θ1) 1; 
     -tand(θ2) 1]
c = [ys1; ys2]

# Invert the matrix and solve the linear system
S = A \ c 
x_ship = S[1]
y_ship = S[2]

# Print the coordinates of the ship on the console
println("X coordinate: ",x_ship)
println("Y coordinate: ",y_ship)
