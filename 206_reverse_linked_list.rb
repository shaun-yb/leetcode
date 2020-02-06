# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    return head if head.nil? || head.next.nil?
    prev_node = head
    cur_node = head.next
    head.next = nil
    
    while !cur_node.nil? do
        next_node = cur_node.next
        cur_node.next = prev_node
        prev_node = cur_node
        head = cur_node
        cur_node = next_node
    end
    
    build_list(head)
end

# because LC is obnoxiously expecting an array back -_-
def build_list(head)
    n = head
    list = []
    
    while !n.nil? do
        list << n.val
        n = n.next
    end
    
    list
end

# https://leetcode.com/problems/reverse-linked-list/