# https://leetcode.com/problems/subsets/submissions/

# @param {Integer[]} nums
# @return {Integer[][]}

def subsets(nums)
    powerset(nums)
end

def powerset(nums)
    return [[]] if nums.empty?
    insert_num = nums.pop
    merge(insert_num, powerset(nums))
end

def merge(num, powerset)
    merged_powerset = powerset.dup
    
    powerset.each do |set|
        merged_set = set.dup
        merged_set << num
        merged_powerset << merged_set
    end
    
    merged_powerset
end
