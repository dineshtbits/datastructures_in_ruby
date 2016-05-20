# Finding the nth number in fibonacci.

# using method
def fibonacci(n)
  n < 2 ? n : fibonacci(n-1) + fibonacci(n-2)
end

# Using lamba
lam = ->(n) {n < 2 ? n : lam[n-1] + lam[n-2]}

puts fibonacci(6)
puts lam.call(6)