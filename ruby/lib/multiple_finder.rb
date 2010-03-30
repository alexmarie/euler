require 'pp'

class MultipleFinder

  def self.greatest_from_file(num_ints,filename)
    f = IO.readlines(filename)
    int_array = f.to_s.delete("\n").split(//).map{|n| n.to_i}
    greatest(num_ints,int_array)
  end

  def self.greatest(num_ints,num_array)
    largest = 0
    while(num_array.count >= num_ints)
      new_mult = num_array[0,num_ints].inject(1){|product, n| product * n}
      largest = new_mult > largest ? new_mult : largest
      num_array.shift
    end
    largest
  end

end
