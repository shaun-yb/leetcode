# https://leetcode.com/problems/permutations-ii
# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
    perms = p(nums)
    perms.uniq
end

def p(nums)
    if nums.length == 1
        return [nums]
    else
        return merge(nums[0], p(nums[1..nums.length-1]))
    end
end

def merge(num, num_sets)
    new_num_sets = []
    num_sets.each do |num_set|
        (0..num_set.length).each do |i|
            new_set = num_set.dup
            new_set.insert(i, num)
            new_num_sets << new_set
        end
    end
    
    new_num_sets
end
