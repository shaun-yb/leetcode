# https://leetcode.com/problems/goat-latin/

# @param {String} s
# @return {String}
def to_goat_latin(s)
    goat_latin_sentence = ""
    suffix = "maa"
    vowels = %w(a e i o u)
    
    s.split(" ").each_with_index do |word, i|
        first_letter = word[0]
        unless vowels.include?(first_letter.downcase)
        # if is_constanant?(first_letter)
            word = word[1..word.length-1] + first_letter
        end
        
        word += suffix
        suffix += "a"
        goat_latin_sentence += (word + " ")
    end
    goat_latin_sentence.chomp(" ")
end