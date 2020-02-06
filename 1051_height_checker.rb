# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
    sorted_heights = heights.dup.sort!
    ctr = 0
    
    (0..heights.length-1).each do |i|
        ctr += 1 if heights[i] != sorted_heights[i]
    end
    
    return ctr
end

# https://leetcode.com/problems/height-checker/