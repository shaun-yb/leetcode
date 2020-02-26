# https://leetcode.com/problems/split-a-string-in-balanced-strings/

# @param {String} s
# @return {Integer}
def balanced_string_split(s)
    l_cnt = 0
    r_cnt = 0
    split_cnt = 0
    
    s.each_char do |c|
        if c == "L"
            l_cnt +=1
        else
            r_cnt +=1
        end
        
        if l_cnt > 0 && r_cnt > 0 && l_cnt == r_cnt
            split_cnt +=1
            l_cnt = 0
            r_cnt = 0
        end
    end
    
    split_cnt
end
