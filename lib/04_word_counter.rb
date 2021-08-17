dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

class Hash
  def compact
    delete_if { |k, v| v.nil? }
  end
end

def word_counter(string, dictionnary)
  string = string.downcase
  h = Hash.new
  dictionnary.each do |word|
    unless string.scan(/(?=#{word})/).count == 0
      h[word] = string.scan(/(?=#{word})/).count
    end
  end
return h.compact
end


print word_counter("Howdy partner, sit down! How's it going?", dictionnary)

