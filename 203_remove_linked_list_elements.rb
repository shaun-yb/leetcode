# https://leetcode.com/problems/remove-linked-list-elements/submissions/
def remove_elements(head, val)
    return nil if head.nil?
    stack = []
    cur_node = head
    
    while !cur_node.nil? do
        stack << cur_node unless cur_node.val == val
        cur_node = cur_node.next
    end
    
    stack.each_cons(2) do |node, next_node|
        node.next = next_node
    end
    
    if stack.empty?
        return nil
    else
        stack.last.next = nil
        return stack.first
    end    
end
