# https://leetcode.com/problems/maximum-subarray/   

def max_sub_array(nums)
    return 0 if nums.empty?
    memo = []
    memo[0] = max = nums[0]
    
    (1..nums.length-1).each do |i|
        num = nums[i]
        val = [memo[i-1] + num, num].max
        max = val if val > max
        memo << val
    end
    max
end
