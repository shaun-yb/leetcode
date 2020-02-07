# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    s_hash = Hash.new(0)
    t_hash = Hash.new(0)
    
    s.each_char do |c|
        s_hash[c] += 1
    end
    
    t.each_char do |c|
        t_hash[c] += 1
    end
    
    return s_hash == t_hash
end