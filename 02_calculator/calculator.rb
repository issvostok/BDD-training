def add(argument1, argument2)
  argument1 + argument2
end

def subtract(argument1, argument2)
  argument1 - argument2
end

def sum(array)
  sum = 0
  array.each {|x| sum += x }
  sum
end

def multiply(*arguments)
  product = 1
  for integer in arguments
    product *= integer
  end
  product
end

def power(argument1, argument2)
  argument1 ** argument2
end

def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end
