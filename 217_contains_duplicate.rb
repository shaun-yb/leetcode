# https://leetcode.com/problems/contains-duplicate/

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    return false if nums.length == 1
    seen = Hash.new(false)
    
    nums.each do |num|
        if seen[num]
            return true
        else
            seen[num] = true
        end
    end
    
    return false
end