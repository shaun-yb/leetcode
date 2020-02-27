# https://leetcode.com/problems/unique-morse-code-words
# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
    morse_words = words.map { |word| morsify(word) }
    morse_words.uniq.length
end

def morsify(word)
    word.chars.inject("") do |morsified_word, char|
        morsified_word + morse_dictionary[alphabet.index(char)]
    end
end

def alphabet
    ('a'..'z').to_a
end

def morse_dictionary
    [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",
        ".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",
        ".--","-..-","-.--","--.."
    ]
end
