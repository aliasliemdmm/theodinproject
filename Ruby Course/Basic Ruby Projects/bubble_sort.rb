#> bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]
# 3 5 1 6 7 2 4 8

def bubble_sort(arr)
  (arr.length-1..1).step(-1) do |i|
    (0..i-1).each do |j|
      if arr[j]>arr[j+1]
        c = arr[j]
        arr[j] = arr[j+1]
        arr[j+1] = c
      end
    end
#    print(arr)
#    puts("")
  end
  arr
end

print (bubble_sort([4,3,78,2,0,2]))
puts("")
print (bubble_sort([3,5,1,6,7,2,4,8]))
puts("")
