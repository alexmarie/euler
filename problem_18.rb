def max(a,b)
  [a.nil? ? 0 : a, b.nil? ? 0 : b].max
end

t = []
IO.foreach("problem_18.txt") { |line| t.push(line.chomp.split(" ").map{|n|n.to_i})}
(1...t.size).each do |i|
  (0...t[i].size).each do |j|
    t[i][j] +=  max(t[i-1][j-1],t[i-1][j])
  end
end

puts t.last.max

