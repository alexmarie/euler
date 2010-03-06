class Palindrome

  def self.largest_palindrome(max)
    max.downto(1) do |n|
      offset = 0
      begin
        result = (n+offset)*(n-offset)
        if int_is_palindrome?(result)
          return result
        end
        offset += 1
      end until n+offset > max 
    end
  end


  def self.largest_palindrome2(largestMultiplier)
    palindromes = []
    largestMultiplier.downto(0) do |i|
      i.downto(0) do |j|
        result = (i*j)
        if int_is_palindrome?(result)        
          #puts "multipliers are #{i} and #{j}"
          palindromes.push(result)
        end
      end
    end
    palindromes.max
  end

  def self.int_is_palindrome?(n)
    is_palindrome?(n.to_s.chars.to_a)
  end

  def self.is_palindrome?(chars)
    if chars.size < 2
      return true
    end
    first, last = chars.shift, chars.pop
    first == last and is_palindrome?(chars)
  end

end
