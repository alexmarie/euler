class PythagoreanTriplet

  def self.find_multiple(sum)
    answer = nil
    (1..sum).each do |a|
      (1..sum).each do |b|
        c = sum - a -b
        if a*a + b*b == c*c
          answer = a*b*c
          break
        end
      end
    end
    answer
  end

end 
