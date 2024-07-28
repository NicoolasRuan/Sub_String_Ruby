dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  string_arr = string.downcase.split(/\W+/)

  dictionary.reduce(Hash.new(0)) do |result, word|
    string_arr.each do |str|
      if str.include?(word)
        result[word] += 1
      end
    end
    result
  end 



end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)

