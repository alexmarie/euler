@n = 4
@grid = []
IO.foreach("grid.txt") {|l| @grid.push(l.delete('\n').split(' ').map!{|v| v.to_i})}

def max_h_mult
  max_mult @grid
end

def max_v_mult
  max_mult @grid.transpose
end

def max_d_right_mult
  max_mult get_d_rows(@grid)   
end

def max_d_left_mult
  max_mult get_d_rows(@grid.map {|r| r.reverse})
end

def max_mult(grid)
  max = 0
  grid.each do |row|
    mult = 0
    window = [@n,row.size].min
    (0..row.size-window).each do |i|
      mult = (0...window).inject(1){|p,x| p = p*row[i+x]} 
      max = [mult,max].max
    end
  end
 max 
end

def get_d_start_elements
  start_elements = [[0,0]]
  (0...@grid.size).each {|i| start_elements.push([0,i],[i,0])}
  start_elements
end

def get_d_rows(grid)
  diags = []
  max_index = grid.size-1
  get_d_start_elements.each do |s|
    d,r,c = [],s[0],s[1]
    while(r <= max_index and c <= max_index) do
      d.push(grid[r][c])
      r,c = r+1,c+1
    end
    diags.push(d)
  end
  diags
end

puts [max_h_mult,max_v_mult,max_d_right_mult,max_d_left_mult].max
