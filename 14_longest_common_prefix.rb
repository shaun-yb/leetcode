# https://leetcode.com/problems/longest-common-prefix/

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    prefix_str = ""
    return prefix_str if strs.length === 0
    min_len = (strs.map { |str| str.length }).min
    
    (0..min_len - 1).each do |i|
        first_val = strs[0][i]
        chars_are_same = true
                
        strs.each do |v|
            if v[i] != first_val 
                chars_are_same = false
            end 
        end 
        
        if chars_are_same 
            prefix_str = prefix_str + first_val
        else 
            return prefix_str
        end 
    end
    
    return prefix_str
end
