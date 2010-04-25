require 'set'

primes, non_primes, max = [], Set.new(), 2000000

(2..max).each do |i|
  if !non_primes.include?(i)
    primes.push(i)
    (i..max/i).each{|n| non_primes.add(n*i)}
  end
end

puts primes.inject{|sum,n| sum+n}
