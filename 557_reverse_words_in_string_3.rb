# https://leetcode.com/problems/reverse-words-in-a-string-iii/submissions/
# @param {String} s
# @return {String}
def reverse_words(s)
    reversed_words = s.split(" ").map { |word| reverse(word) }
    
    reversed_string = reversed_words.inject("") { |str, word| str += "#{word} " }
    reversed_string.strip
end

def reverse(word)
    l_ptr = 0
    r_ptr = word.length-1
    
    while l_ptr < r_ptr do
        temp = word[l_ptr]
        word[l_ptr] = word[r_ptr]
        word[r_ptr] = temp
        l_ptr += 1
        r_ptr -= 1
    end
    
    word
end
