# https://leetcode.com/problems/longest-continuous-increasing-subsequence/

# @param {Integer[]} nums
# @return {Integer}
def find_length_of_lcis(nums)
    return 0 if nums.empty?
    f = []
    
    nums.each_with_index do |num, i|
        if i == 0 || nums[i-1] >= nums[i]
            f[i] = 1
        else
            f[i] = 1 + f[i-1]
        end
    end
    f.max
end