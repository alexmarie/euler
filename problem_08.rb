int_array = IO.readlines("longnum.txt").map{|l|l.chop.chars.map{|n| n.to_i}}.flatten
products = (0..int_array.count-5).map{|i| int_array[i,5].inject(1){|product, n| product * n}}
puts products.max
