#write your code here
def add(a,b)
  return a + b
end

def subtract(a,b)
  return a - b
end

def sum(arr)
  s = 0
  arr.each { |x| s += x }
  return s
end

def multiply(*arr)
  mul = 1
  arr.each { |a| mul *= a }
  return mul
end

def power(a,b)
  return a ** b
end

def factorial(n)
  if n == 0
    return 1
  end
  return n * factorial(n-1)
end
