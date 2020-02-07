# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    words = s.split(" ")
    return 0 if words.empty? || words.any? { |word| word == ' ' }
    words.last.length
#     chars = s.split("")
    
#     return 0 if chars.empty? 
#     s.last.length
end

# https://leetcode.com/problems/length-of-last-word/