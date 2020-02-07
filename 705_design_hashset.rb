class MyHashSet
        def initialize()
            @set = []
        end
    
        def add(key)
            @set << key unless @set.include?(key)
        end
    
        def remove(key)
            @set.delete(key)
        end

        def contains(key)
            @set.include?(key)
        end
    end


    # https://leetcode.com/problems/design-hashset/
