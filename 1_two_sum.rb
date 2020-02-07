# https://leetcode.com/problems/two-sum/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    return [0, 1] if nums.length === 2
    target_differences = Hash.new
    
    nums.each_with_index do |num, i|
        targ_diff = target - num
        compliment_index = target_differences[num]
        
        if compliment_index
            return [i, compliment_index].sort
        else
            target_differences[targ_diff] = i
        end
    end
end