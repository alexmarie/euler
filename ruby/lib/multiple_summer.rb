require 'set'

class MultipleSummer

  def self.sum(upTo,multipliers)
   multiples = multipliers.collect! {|x| multiples(upTo,x)}
   s = Set.new(multiples.flatten!)
   s.inject {|sum,n| sum+n}
  end 

  def self.multiples(upTo,multiplier)
    next_multiple = multiplier
    multiples = []
    while(next_multiple < upTo) 
      multiples.push(next_multiple)
      next_multiple += multiplier
    end
    multiples
  end

end

