def substrings(input, dictionary)
  substrings = Hash.new(0)

  input.split(" ").each do |x|
    dictionary.each do |word|
      if x.include? word
        substrings[word] += 1
      end
    end
  end
  substrings
end

dictionary = [
   "below",
   "down",
   "go",
   "low",
   "be" 
]
p substrings("below the below", dictionary)
