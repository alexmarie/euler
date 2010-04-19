#http://projecteuler.net/index.php?section=problems&id=3

@primes = []

def prime_factors(n)
  (2..n/2).each do |i|
    if(@primes.all?{ |p| i%p != 0})
      @primes.push(i)
      if(n%i) == 0
        return [i] + prime_factors(n/i)
      end
    end
  end
  [n]
end 

puts prime_factors(600851475143).to_a.max
