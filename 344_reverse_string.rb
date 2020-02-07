# https://leetcode.com/problems/reverse-string/
# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
    p1 = 0
    p2 = s.length - 1
    
    while p1 <= p2 do
        tmp = s[p1]
        s[p1] = s[p2]
        s[p2] = tmp
        
        p1 += 1
        p2 -= 1
    end
    
    return s
end