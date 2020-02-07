# https://leetcode.com/problems/maximum-swap/

# @param {Integer} num
# @return {Integer}
def maximum_swap(num)
    return num if num < 10
    
    digits_arr = get_digits_array(num)
    swap_index = nil
    max_swap = 0
    
    digits_arr.each_with_index do |digit, i|
        (i+1..digits_arr.length-1).each do |j|
            if digits_arr[j] > digit && digits_arr[j] >= max_swap
                swap_index = j
                max_swap = digits_arr[j]
            end 
        end
        
        if !swap_index.nil?
            swap_value = digits_arr[swap_index]
            
            digits_arr[swap_index] = digits_arr[i]
            digits_arr[i] = swap_value
            
            return digits_array_to_int(digits_arr)
        end
    end
    digits_array_to_int(digits_arr)
end

def get_digits_array(num)
    digits_arr = []
    
    while num > 0 do
        digits_arr << num % 10
        num = num / 10 
    end
    digits_arr.reverse
end

def digits_array_to_int(digits_arr)
    multiplier = 1
    num = 0
    
    digits_arr.reverse.each do |digit|
        # puts digit
        num = num + (digit*multiplier)
        multiplier = multiplier* 10
    end
    num
end