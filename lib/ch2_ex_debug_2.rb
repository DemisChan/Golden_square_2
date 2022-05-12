# File: factorial.rb
def factorial(n)
  product = 1
  while n > 0
    product *= n
    n -= 1
    # Change the order of lines above
  end
  product
end

p factorial(5)