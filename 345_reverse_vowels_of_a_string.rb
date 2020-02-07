# https://leetcode.com/problems/reverse-vowels-of-a-string/
# @param {String} s
# @return {String}
def reverse_vowels(s)
    return s if s.length === 0
    
    vowel_indexes = find_vowels(s)
    l = 0
    r = vowel_indexes.length - 1

    while l < r do
        tmp = s[vowel_indexes[l]]
        
        s[vowel_indexes[l]] = s[vowel_indexes[r]]
        s[vowel_indexes[r]] = tmp
        
        l += 1 
        r -= 1
    end
    s
end

def swap(l, r, s)
    tmp = s[l]
    s[l] = s[r]
    s[r] = s[l]
    s
end

def find_vowels(s)
    vowels = %w(a e i o u)
    vowel_indexes = []
    s.split("").each_with_index do |c, i|
        vowel_indexes << i if vowels.include?(c.downcase)
    end
    vowel_indexes
end