class Triangle

  def self.with_divisors(n)
    guess,next_int = 1,2
    while(true) do
     if(divisor_count(guess)) >= n
       return guess
     end
     guess = guess + next_int
     next_int = next_int + 1
    end
  end

  def self.first_guess(n)
    half = n/2
    n.even? ? half*(half+1) : (half+1)**2
  end

  def self.divisor_count(n)
    div_count = 0
    sqrt = Math.sqrt(n)
    (1...sqrt).each do |x|
     if(n%x == 0)
       div_count = div_count + 2
     end
    end
    if(sqrt**2 == n)
      div_count = div_count + 1
    end
    div_count
  end

end
