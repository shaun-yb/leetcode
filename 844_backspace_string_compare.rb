# https://leetcode.com/problems/backspace-string-compare/

# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
    remove_backspaces(s) == remove_backspaces(t)
end

def remove_backspaces(str)
    skips = 0
    ret_str = ""
    
    str.reverse.each_char do |c|
        if c == '#'
            skips += 1
        elsif skips > 0
            skips -=1
        else
            ret_str.concat(c)
            delete_next = false
        end
    end
    ret_str
end