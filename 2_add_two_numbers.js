/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} l1
 * @param {ListNode} l2
 * @return {ListNode}
 */
var addTwoNumbers = function(l1, l2) {
    var nodeSum;
    var head = curNode = new ListNode();
    var carryOver = 0;
    var remainder = false;
    
    while (l1 || l2) { 
        var l1val = l1 ? l1.val : 0;
        var l2val = l2 ? l2.val : 0;
        // we only care about the remainder if we've exited the loop
        remainder = false;
        
        nodeSum = l1val + l2val + carryOver;  
        
        if (nodeSum > 9) {
            curNode.val = (nodeSum - 10);
            carryOver = 1;
            remainder = true;

        } else {
            curNode.val = nodeSum;
            carryOver = 0;
        }

        if (l1) {
            l1 = l1.next;
        } 
        
        if (l2) {
            l2 = l2.next;
        }      
        
        if (l1 || l2) {
            curNode.next = new ListNode();
            curNode = curNode.next;
        }
    }
    
    if (remainder) {
        curNode.next = new ListNode();
        curNode.next.val = 1;
    }
    return head;
};
