# stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12
# bruce force
# stock_picker([17,3,6,9,15,8,6,1,10])
# i = 0,res[0] = [:val:0,:i1:-1,:i2:-1] => store idx maximum diferent and its index

def stock_picker(arr) 
  num = arr.length
  res = Array.new(num)
  (0...num).each do |i|
    res[i] = [0,-1,-1]
    (i+1 ... num).each do |j|
#      puts "#{i} #{j}"
      c = arr[j]-arr[i]
      if c>res[i][0]
        res[i] = [c,i,j]
      end
    end
  end
  #print(res)
  m = -1
  res.sort! {|item| -item[0] } 
  #print(res)
  puts "[#{res[0][1]}, #{res[0][2]}]"
end


stock_picker([17,3,6,9,15,8,6,1,10])
