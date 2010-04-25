answer = nil

(1..1000).each do |a|
  (1..1000).each do |b|
    c = 1000 - a -b
    if a*a + b*b == c*c
      answer = a*b*c
      break
    end
  end
end

puts answer
