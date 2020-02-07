# https://leetcode.com/problems/number-of-segments-in-a-string/

# @param {String} s
# @return {Integer}
def count_segments(s)
    return 0 if !s
    s.split(" ").length
end