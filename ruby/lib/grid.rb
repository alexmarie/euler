require 'pp'

class Grid

  def initialize(file)
    @a = Array.new()
    IO.foreach(file) do |l|
      row = l.delete('\n').split(' ').map!{|v| v.to_i}
      @a.push(row)
    end
  end

  def max_multiple(n)
    [max_h_mult(n),max_v_mult(n),max_d_right_mult(n),max_d_left_mult(n)].max
  end

  def max_h_mult(n)
    max_mult(@a,n)
  end

  def max_v_mult(n)
    max_mult(@a.transpose,n)
  end

  def max_d_right_mult(n)
    max_mult(get_d_rows(@a),n)
  end

  def max_d_left_mult(n)
    reverse = []
    @a.each {|r| reverse.push(r.reverse)}
    max_mult(get_d_rows(reverse),n)
  end

  def max_mult(a, n)
    max = 0
    a.each do |row|
      mult = 0
      window = n < row.size ? n : row.size
      (0..row.size-window).each do |i|
        mult = (0..window-1).inject(1){|p,x| p = p*row[i+x]} 
        max = mult > max ? mult : max
      end
    end
   max 
  end

  def get_d_start_elements
    starts = Array.new
    max_index = @a.size-1
    starts.push([0,0])
    (0..max_index).each do |i|
      starts.push([0,i])
      starts.push([i,0])
    end
    starts
  end

  def get_d_rows(grid)
    diags = []
    max_index = grid.size-1
    get_d_start_elements.each do |s|
      d,r,c = [],s[0],s[1]
      while(r <= max_index and c <= max_index) do
        d.push(grid[r][c])
        r = r+1
        c = c+1
      end
      diags.push(d)
    end
    diags
  end

  def value(r,c)
    @a[r][c]
  end

end
