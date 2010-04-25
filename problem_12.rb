def divisor_count(n)
  sqrt = Math.sqrt(n)
  div_count = (1...sqrt).select {|x| n%x == 0}.size * 2
  if(sqrt**2 == n)
    div_count = div_count + 1
  end
  div_count
end

def with_divisors(n)
  next_guess,next_int = 1,2
  while(divisor_count(next_guess) < 500) do
    next_guess += next_int
    next_int +=  1
  end
  next_guess
end

puts with_divisors(500)


