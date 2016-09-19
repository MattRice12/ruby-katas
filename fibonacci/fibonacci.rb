def fib(max)
  n = a = 1
  while n <= max
    puts n
    n = a + n
    a = n - a
  end
end

fib(100)
