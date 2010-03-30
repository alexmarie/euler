require 'pp'

class Primes

  def self.sum_all_below(max)
    primes = []
    is_prime = {}
    (2..max).each do |i|
      if is_prime[i] == 0
         next
      end
      primes.push(i)
      (i..max/i).each{|n| is_prime[n*i] = 0}
    end
    primes.inject{|sum,n| sum+n}
  end

end
