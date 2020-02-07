# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    return [] if digits.length === 0
    digits = digits.split("").reverse
    solve(digits)
end

def solve(digits)
    return [] if digits.empty?
    popped_element = digits.pop
    return combine(d(popped_element), solve(digits))
end

def combine(arr1, arr2)
    combos = []
    
    if arr1.empty? || arr2.empty? 
        return arr1 if arr2.empty?
        return arr2 if arr1.empty?
    end
    
    arr1.each do |arr1_item|
        arr2.each do |arr2_item|
            combos << arr1_item + arr2_item
        end
    end
    combos
end

def d(key)
    digits = {
        '1' => [],
        '2' => %w(a b c),
        '3' => %w(d e f),
        '4' => %w(g h i),
        '5' => %w(j k l),
        '6' => %w(m n o),
        '7' => %w(p q r s),
        '8' => %w(t u v),
        '9' => %w(w x y z)
        }
    digits[key]
end