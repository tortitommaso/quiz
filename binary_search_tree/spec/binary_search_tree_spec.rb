require_relative '../binary_search_tree'
require 'byebug'

describe "BinarySearchTree" do
  include BinarySearchTree

  before(:each) do
    @tree = BinarySearchTree::Node.new(5)
    left = BinarySearchTree::Node.new(3)
    left_left = BinarySearchTree::Node.new(1)
    left_right = BinarySearchTree::Node.new(4)
    left.left = left_left
    left.right = left_right
    right = BinarySearchTree::Node.new(9)
    right_left = BinarySearchTree::Node.new(6)
    right.left = right_left
    @tree.left = left
    @tree.right = right
  end

  it "#lookup" do
    expect(lookup(@tree, 1)).to eq(true)
    expect(lookup(@tree, 1000)).to eq(false)
  end

  it "#size" do
    expect(size(nil)).to eq(0)    
    expect(size(@tree)).to eq(6)
  end

  it "#max_depth" do
    expect(max_depth(nil)).to eq(0)    
    expect(max_depth(@tree)).to eq(3)
  end

end