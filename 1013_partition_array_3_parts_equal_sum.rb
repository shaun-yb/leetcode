# @param {Integer[]} a
# @return {Boolean}
def can_three_parts_equal_sum(a)
    sum = a.inject(:+)
    return false if sum % 3 != 0
    
    third_sum = sum /3
    sum_ctr = 0
    cur_sum = 0
    
    a.each do |num|
        cur_sum += num
        
        if cur_sum == third_sum
            sum_ctr += 1
            cur_sum = 0
        end
    end
    
    return sum_ctr == 3
end


# 0 + 2 + 1 - 6 + 6
# -7 

# https://leetcode.com/problems/partition-array-into-three-parts-with-equal-sum/