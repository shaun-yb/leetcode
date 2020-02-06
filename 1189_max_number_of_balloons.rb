# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
    char_count = get_char_count(text)
    balloon = ['b', 'a', 'l', 'l', 'o', 'o', 'n']
    cnt = 0
    
    while true do
        balloon.each do |c|
            char_count[c] -= 1
            return cnt if char_count[c] < 0
        end
        cnt += 1
    end
end

def get_char_count(text)
    char_count = Hash.new(0)
    
    text.each_char do |c|
        char_count[c] += 1
    end
    
    return char_count
end

# https://leetcode.com/problems/maximum-number-of-balloons/