#> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#> substrings("below", dictionary)
#=> { "below" => 1, "low" => 1 }
#> substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

def substrings(haystack, dict)
  res = {}
  haystack.downcase!
  dict.each do |word|
    l = haystack.length - word.length
    c = 0
    a = 0
    while a <= l
      needle = haystack[a,word.length]
      if needle == word 
        c += 1
      end
      a += 1
    end 
    res[word] = c if c > 0
  end
  res
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
