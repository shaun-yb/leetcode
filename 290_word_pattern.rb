# https://leetcode.com/problems/word-pattern/

# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
    words = str.split(" ")
    return false if pattern.length != words.length
    
    word_to_pattern = Hash.new
    pattern_to_word = Hash.new

    words.each_with_index do |word, i|
        card = pattern[i]
        
        if word_to_pattern[word].nil? && pattern_to_word[card].nil?
            word_to_pattern[word] = card
            pattern_to_word[card] = word
        
        elsif !word_to_pattern[word].nil?
            # we've seen this word before.  does it have the same card?
            return false if word_to_pattern[word] != card
            
        elsif !pattern_to_word[card].nil?
            # we've seen this pattern.  does it have the same word?
            return false if pattern_to_word[card] != word
        end
    end
    true
end
