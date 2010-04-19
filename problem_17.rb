
@words = {1 =>"one",
        2 =>"two",
        3 =>"three",
        4 =>"four",
        5 =>"five",
        6 =>"six",
        7 =>"seven",
        8 =>"eight",
        9 =>"nine",
        10 =>"ten",
        11 =>"eleven",
        12 =>"twelve",
        13 =>"thirteen",
        15 =>"fifteen",
        18 =>"eighteen",
        20 =>"twenty",
        30 =>"thirty",
        40 =>"forty",
        50 =>"fifty",
        80 =>"eighty",
        1000 => "oneThousand"}


def find_word(n)
  case
    when n==0 
      ""
    when @words.has_key?(n)
      @words[n]
    when n/100 > 0
      @words[n/100] + "hundred" + (n%100 == 0 ? "" : "and" + find_word(n%100))
    when n/10 == 1
      @words[n%10] + "teen" # fourteen,fifteen,etc
    when n%10 == 0
      @words[n/10] + "ty" # fourty,fifty,etc
    else
      hundreds = n - n%100
      tens = n%100 - n%10
      ones = n%10
      find_word(hundreds) + find_word(tens) + find_word(ones)
  end
end

puts (1..1000).map{|n|find_word(n).chars.count}.inject{|n,sum|sum+=n}
