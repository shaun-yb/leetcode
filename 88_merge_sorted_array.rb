# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    return nums1 if nums1.empty? || nums2.empty?
    i = m-1
    j = n-1
    
    while i >= 0 && j >= 0 do
        if nums2[j] > nums1[i]
            nums1[i+j+1] = nums2[j]
            j -= 1
        else
            swap(nums1, i, i+j+1)
            i -= 1
        end
    end
    
    return if j < 0
    
    (0..j).each do |k|
        nums1[k] = nums2[k]
    end
end

def swap(nums, i, j)
    temp = nums[i]
    nums[i] = nums[j]
    nums[j] = temp
end