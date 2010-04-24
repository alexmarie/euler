puts (1..100).inject(1){|sum,n|sum*n}.to_s.chars.inject(0){|sum,n|sum+n.to_i}
