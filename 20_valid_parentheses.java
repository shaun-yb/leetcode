// https://leetcode.com/problems/valid-parentheses

import java.util.Stack;
public class Solution {
    public boolean isValid(String s) {
        Map<String, String> brackets = new HashMap<String, String>();

        brackets.put("(", ")");
        brackets.put("[","]");
        brackets.put("{", "}");
        Set<String> openBrackets = brackets.keySet();
        Stack<String>  lifo = new Stack<String>();
        for (int i = 0; i < s.length(); i++) {
            char cur_char = s.charAt(i);
            String c = String.valueOf(cur_char);
            
            if (openBrackets.contains(c)){
                // the next token is a closed bracket
                // it should be the corresponding closed bracket
                // to the top of the stack 
                lifo.push(c);
            }
 
            else { 
                // the next token is a closed bracket
                // it should be the corresponding closed bracket
                // to the top of the stack 
                
                if (lifo.size() == 0) {
                    //we have encountered a closed bracket without any 
                    //open brackets! 
                    return false;
                }
                String topOfStack = lifo.peek();
                if (brackets.get(topOfStack).equals(c)) {
                    //this closed bracket matches the last open bracket
                    //pop off the last open bracket and continue 
                    lifo.pop();
                }
                else  {
                    //this closed bracket does not match last open bracket
                    //return false 
                    return false;
                }
            }
        }
        //the stack should be empty now 
        //eg every open parenthesis has a closed parenthesis
        if (lifo.size() == 0) { 
            return true;
        }
        else {
            return false;
        }
        
    }
}