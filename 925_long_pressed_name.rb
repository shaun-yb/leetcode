# https://leetcode.com/problems/long-pressed-name/
# @param {String} name
# @param {String} typed
# @return {Boolean}
def is_long_pressed_name(name, typed)
    name_char_counts = build_char_counts(name)
    typed_char_counts = build_char_counts(typed)
    
    return false if name_char_counts.length != typed_char_counts.length
    
    (0..name_char_counts.length-1).each do |i|
        return false if name_char_counts[i].first.first != typed_char_counts[i].first.first ||
            name_char_counts[i].first.last > typed_char_counts[i].first.last
    end
    true    
end

def build_char_counts(str)
    char_counts = []
    cur_char_count = 1
    
    str.chars.each_cons(2) do |a,b|
        if a == b
            cur_char_count +=1
        else
            char_counts << { a => cur_char_count }
            cur_char_count = 1
        end
    end
    char_counts
end