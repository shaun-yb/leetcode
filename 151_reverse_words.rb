# @param {String} s
# @return {String}
def reverse_words(s)
    reverse_words_array = s.split(" ").reverse
    reversed_string = ""
     
     reverse_words_array.each do |word|
         reversed_string += "#{word} "
     end
     reversed_string.strip
 end

 # https://leetcode.com/problems/reverse-words-in-a-string/submissions/