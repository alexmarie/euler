def largest_palindrome(max)
  max.downto(1) do |n|
    (0..max-n).each do |offset|
      result = (n+offset)*(n-offset)
      if int_is_palindrome?(result)
        return result
      end
    end
  end
end

def int_is_palindrome?(n)
  is_palindrome?(n.to_s.chars.to_a)
end

def is_palindrome?(chars)
  chars.size < 2 ||
  (chars.shift == chars.pop and is_palindrome?(chars))
end

puts largest_palindrome(999)
