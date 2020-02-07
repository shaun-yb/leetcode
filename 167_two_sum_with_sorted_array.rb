# https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    index1 = 0
    index2 = numbers.length - 1
    
    while index1 < index2 
        low_num = numbers[index1]
        high_num = numbers[index2]
        sum = low_num + high_num
        if sum === target
            return [index1 + 1, index2 + 1]
        elsif sum < target
            # the sum needs to be higher
            index1 = index1 + 1
        else
            index2 = index2 - 1
        end
    end
end