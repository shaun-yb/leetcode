# https://leetcode.com/problems/detect-capital/

# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
    return true if word.length == 1 && is_capitalized?(word)
    
    capitals = []
    word.split("").each do |c|
        capitals << is_capitalized?(c)
    end
    
    capitals.uniq.length == 1 || capitals[0] && capitals[1..-1].all? { |c| !c }
end

def is_capitalized?(c)
    c == c.upcase
end