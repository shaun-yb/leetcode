# https://leetcode.com/problems/maximum-product-subarray/
# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
    return 0 if nums.empty?
    max_vals = []
    min_vals = []
    
    max_vals[0] = max = nums[0]
    min_vals[0] = nums[0]
    
    (1..nums.length-1).each do |i|
        num = nums[i]
        
        candidate_results = [num, num*max_vals[i-1], num*min_vals[i-1]]
        max_val = candidate_results.max
        min_val = candidate_results.min
        
        max = max_val if max_val > max
        
        min_vals << min_val
        max_vals << max_val
    end
    max
end
