require 'benchmark'

class Log

  def self.benchmark(num, &blk)
    a = nil
    bm = Benchmark.realtime do
      a = yield
    end
    puts "\nproblem #{num} answer is: #{a} (#{bm.to_s[0,5]} s)"
  end

end
