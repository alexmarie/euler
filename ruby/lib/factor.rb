class Factor

  def self.largest_prime(n)
    i = 2
    primes = []
    while(i <= n/2)
      if(is_prime(i,primes))
         primes.push(i)
         factor = n/i
         if(n%i == 0)
          return [i,largest_prime(factor)].max
         end
      end
      i += 1
    end
    n
  end

  def self.is_prime(n,primes)
    return primes.all? {|p| n%p != 0}
  end

end
