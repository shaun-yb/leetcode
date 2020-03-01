# https://leetcode.com/problems/remove-duplicates-from-sorted-array/
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    return 1 if nums.length == 1
    return 0 if nums.empty?
    dup_indexes = []
    i = 0
    j = 1
    
    while j < nums.length  do
        dup_indexes << i if nums[i] == nums[j]
        i += 1
        j += 1
    end
    
    deletions = 0
    dup_indexes.each do |dup_index|
        nums.slice!(dup_index - deletions)
        deletions += 1
    end
    
    nums.length
end
