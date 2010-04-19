#http://projecteuler.net/index.php?section=problems&id=2

fibs = [1,2]
until fibs.last >= 4000000
  fibs.push(fibs[-1]+fibs[-2])
end

puts fibs.select{|n|n.even?}.inject{|sum,n|sum+=n}
