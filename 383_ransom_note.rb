# https://leetcode.com/problems/ransom-note/

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    char_count = get_char_count(magazine)
    
    ransom_note.each_char do |c|
        char_count[c] -= 1
        return false if char_count[c] == -1
    end
    
    return true
end

def get_char_count(s)
    char_count = Hash.new(0)
    
    s.each_char do |c|
        char_count[c] += 1
    end
    
    return char_count
end