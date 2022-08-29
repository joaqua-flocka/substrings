
def array_to_string(string)
    string_array = string.split(' ')
    string_array.map do |word|
        stripped_word = ''
        word.each_char do |char|
            if char.ord.between?(65,90) || char.ord.between?(97,122)
                stripped_word << char
            end
        end
        stripped_word.downcase
    end
end

def substrings(string, dictionary)
    string_array = array_to_string(string)
    string_array.reduce(Hash.new(0)) do |hash, word|
        dictionary.each do |item|
            if word.include?(item)
                hash[item] += 1
            end
        end
        hash
    end
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings('Howdy partner, sit down! How\'s it going?', dictionary).sort.to_h