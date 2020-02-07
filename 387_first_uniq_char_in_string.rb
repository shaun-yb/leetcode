# https://leetcode.com/problems/first-unique-character-in-a-string/

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    return -1 if s.length == 0
    hash = Hash.new
    
    s.each_char.with_index do |c, i|
        if hash[c]
            # we've seen this value before.  we don't want it in the final answer
            hash[c] = s.length + 1 #highest possible value
        else 
            hash[c] = i
        end
    end
    
    return -1 if hash.values.all? {|value| value == s.length + 1}
    return hash.values.min
end
