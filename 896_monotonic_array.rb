# https://leetcode.com/problems/monotonic-array/

# @param {Integer[]} a
# @return {Boolean}
def is_monotonic(a)
    return true if a.length == 1 || a.uniq.length == 1
    direction = get_direction(a)
    
    a.each_cons(2) do |x,y|
        if x > y && direction == :decreasing
            return false
        elsif x < y && direction == :increasing
            return false
        end
    end
    true
end

def get_direction(a)
    a.each_cons(2) do |x,y|
        if x > y
            return :increasing
        elsif x < y
            return :decreasing
        end
    end
end