require 'rubygems'

class Fibonocci

  def self.sum_even(upTo)
    prev2, prev1 = 1,2
    sum = 0;
    while(prev1 < upTo)
      if(prev1.even?)
        sum += prev1
      end
      nextTerm = prev1+prev2
      prev2, prev1 = prev1, nextTerm
    end
    sum
  end

end
