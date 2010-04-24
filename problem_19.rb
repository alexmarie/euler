require 'date'

sundays = 0
(1901..2000).each do |y|
  (1..12). each do |m|
    if(Date.new(y,m,1).wday == 0)
      sundays += 1
    end
  end
end
puts sundays

