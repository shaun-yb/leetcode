# https://leetcode.com/problems/maximize-sum-of-array-after-k-negations/
# @param {Integer[]} a
# @param {Integer} k
# @return {Integer}
def largest_sum_after_k_negations(a, k)
    while k > 0 do
        min = a.min
        min_index = a.index(min)
        a[min_index] *= -1
        # ..
        k -= 1
    end
    
    a.inject(0, :+)
end
