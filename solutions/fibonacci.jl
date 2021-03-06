function fibonacci(N::Int64)
    
    # Initialize a vector of integers with enough terms    
    F = zeros(Int64,N)    

    # First two terms in the series
    F[1] = 0
    F[2] = 1
    
    # The rest of terms
    for i = 3:N
        F[i] = F[i-1] + F[i-2] 
    end

    # Return value for the function
    return F

end 