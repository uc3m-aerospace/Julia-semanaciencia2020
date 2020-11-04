function fibonacci(terms)
    
F    = zeros(Int64, terms)
F[2] = 1;

print("------------------------------------------------\n")
println(F[1])
println(F[2])

for i in 3:terms
    F[i] = F[i-1] + F[i-2]
    println(F[i])
end

print("El número áureo es aproximadamente: " * string(F[end]/F[end-1]))
print("\nEl valor exacto es:                 " * string((√5 + 1)/2))

end