def substrings(word, dictionary)
  counter = Hash.new(0)
  word_array = word.scan(/\w+/)
  word_array.map!{|c| c.downcase.strip}
  
  dictionary.each { |i| 
    word_array.each { |j|
      #puts "#{i}:"
      #regex = j
      if j =~ /#{i}/
        counter[i] += 1
        #puts "XXXXXXXXXXXXXXXXXXXXXXXX"
      end
      #puts j
      }
      #puts counter
   }
   puts counter
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)

substrings("below", dictionary)