# https://leetcode.com/problems/queens-that-can-attack-the-king/

# @param {Integer[][]} queens
# @param {Integer[]} king
# @return {Integer[][]}
def queens_attackthe_king(queens, king)
    attackable_queens = []
    
   queens.each do |queen|
       other_queens = queens - [queen]
       i = queen[0]
       j = queen[1]
       
       traverse_up = traverse(i,j,other_queens,king,-1,0)
       traverse_down = traverse(i,j,other_queens,king,1,0)
       traverse_left = traverse(i,j,other_queens,king,0,-1)
       traverse_right = traverse(i,j,other_queens,king,0,1)
       
       traverse_diag_up_left = traverse(i,j,other_queens,king,-1,-1)
       traverse_diag_up_right = traverse(i,j,other_queens,king,-1,1)
       traverse_diag_down_left = traverse(i,j,other_queens,king,1,-1)
       traverse_diag_down_right = traverse(i,j,other_queens,king,1,1)
       
       if traverse_up || traverse_down || traverse_left || traverse_right ||
             traverse_diag_up_left  || traverse_diag_up_right || traverse_diag_down_left || traverse_diag_down_right

           attackable_queens << queen
       end
   end
    
    attackable_queens
end

def traverse(i,j,other_queens,king,i_offset,j_offset)
    return false if out_of_bounds(i,j)
    return false if other_queens.include?([i,j])
    return true if king == [i,j]
    
    return traverse(i+i_offset,j+j_offset,other_queens,king,i_offset,j_offset)
end

def out_of_bounds(i,j)
    return i > 7 || i < 0 || j > 7 || j < 0
end
