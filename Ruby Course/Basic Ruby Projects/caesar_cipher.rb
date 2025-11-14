# caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"
# => a -> f

def caesar_cipher(s, r) 
  small = ('a'..'z').to_a
  big = ('A'..'Z').to_a
  res = ""
  s.bytes.each do |a| 
    b = a+r
    if a >= 97 and a <= 122  
      b = b-26 if b > 122
    elsif a >= 65 and a <= 90  
      b = b-26 if b > 90
    else
      b = a
    end 
    res += b.chr
  end
  res
end

#s = gets.chomp
#r = gets.chomp.to_i
#caesar_cipher(s, r)
res = caesar_cipher("What a string!", 5)
p res

