#http://projecteuler.net/index.php?section=problems&id=1

require 'set'

puts Set.new(([3,5].collect! {|x| (x..1000).step(x).to_a}).flatten!).inject{|sum,n| sum+n}

