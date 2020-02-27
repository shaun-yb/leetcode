# https://leetcode.com/problems/rotate-image/

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
class Point
    attr_accessor :x, :y, :val
    
    def initialize(x,y,val=nil)
        @x = x
        @y = y
        @val = val
    end
end

def rotate(matrix)
    layer_count = matrix.length / 2

    (0..layer_count-1).each do |layer_number|
        rotate_layer(matrix,layer_number)
    end
    
    matrix
end

def rotate_layer(matrix,layer_number)
    layer_length = matrix.length - layer_number - 1
    
    a = Point.new(layer_number, layer_number)
    b = Point.new(layer_number, layer_length)
    c = Point.new(layer_length, layer_number)
    d = Point.new(layer_length, layer_length)
    
    operation_count = layer_length - layer_number

    operation_count.times do
        rotate_four(matrix,a,b,c,d)
        
        a.y += 1
        b.x += 1
        c.x -= 1
        d.y -= 1
    end
end

def rotate_four(matrix,a,b,c,d)
    a.val = matrix[a.x][a.y]
    b.val = matrix[b.x][b.y]
    c.val = matrix[c.x][c.y]
    d.val = matrix[d.x][d.y]
    
    matrix[b.x][b.y] = a.val
    matrix[d.x][d.y] = b.val
    matrix[c.x][c.y] = d.val
    matrix[a.x][a.y] = c.val
end
