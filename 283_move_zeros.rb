# https://leetcode.com/problems/move-zeroes/

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    p = nums.length - 1
    return nums if nums.length == 1 || nums.length == 0 ||  nums.uniq == [0]
    until nums[0..p].index(0).nil? do
        zp = nums[0..p].index(0)
        
        until zp == p do
            swap(nums, zp)
            zp +=1
        end
        
        p -= 1
    end
    nums
end

def swap(nums, zp)
    tmp = nums[zp]
    nums[zp] = nums[zp+1]
    nums[zp+1] = tmp
end
