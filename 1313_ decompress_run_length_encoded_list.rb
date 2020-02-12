# https://leetcode.com/problems/decompress-run-length-encoded-list/
# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
    decompressed_list = []
    p1 = 0
    p2 = 1
    
    while p2 < nums.length do
        nums[p1].times do
            decompressed_list << nums[p2]
        end
        # ...
        p1 += 2
        p2 += 2
    end
    
    decompressed_list
end
