def dictionnary
  ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
end

def swear_words
  File.read("swearWords.txt").split("\n").map { |word| word.strip }
end

def shakespeare_words
  data = File.read("t8.shakespeare.txt").downcase # read shakespeare.txt and downcase everything
  .gsub(/[^a-z0-9\s]/i, '')# remove punctuation https://stackoverflow.com/questions/10073332/stripping-non-alphanumeric-chars-but-leaving-spaces-in-ruby
  .split # create an array
  [1630..-87] # [1630..-87] removes legal information
  return data
end

def shakespeare_word_counter(shakespeare_words, dictionnary)
  h = Hash.new(0)
  shakespeare_words.each do |word|
    if dictionnary.include?(word)
      h[word] += 1
    end
  end
  return h
end

def shakespeare_word_counter(shakespeare_words, swear_words)
  h = Hash.new(0)
  shakespeare_words.each do |word|
    if swear_words.include?(word)
      h[word] += 1
    end
  end
  return h
end

# print shakespeare_word_counter(shakespeare_words, dictionnary)
# print shakespeare_word_counter(shakespeare_words, swear_words)

# print swear_words