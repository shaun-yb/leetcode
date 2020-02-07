# https://leetcode.com/problems/jewels-and-stones/

# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
    gem_count = 0
    s.split("").each do |stone|
        if j.include?(stone) 
            gem_count = gem_count + 1
        end 
    end
    
    gem_count
end