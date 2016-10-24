require 'byebug'

module BinarySearchTree

  class Node
    attr_accessor :value
    attr_accessor :left, :right

    def initialize value
      @value = value
    end
  end

  def lookup tree, value
    return false if tree.nil?
    return true if tree.value == value  
    if value < tree.value 
      lookup(tree.left, value)
    else
      lookup(tree.right, value)
    end
  end

  def size tree
    return 0 if tree.nil?
    size = 1 + size(tree.left) + size(tree.right)
    size
  end

  def max_depth tree
    return 0 if tree.nil?
    left_depth = max_depth(tree.left) 
    right_depth = max_depth(tree.right)
    if left_depth > right_depth
      left_depth + 1
    else
      right_depth + 1
    end      
  end

end