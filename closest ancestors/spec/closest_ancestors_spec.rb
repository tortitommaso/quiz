require_relative '../closest_ancestors'
require 'tree'

describe "ClosestAncestors" do
  include ClosestAncestors

  it "should find closest ancestors in a tree" do
    grandchild1 = Tree::TreeNode.new("GRANDCHILD1", "GRANDCHILD1")
    grandchild2 = Tree::TreeNode.new("GRANDCHILD2", "GRANDCHILD2")
    grandchild3 = Tree::TreeNode.new("GRANDCHILD3", "GRANDCHILD3")
    grandchild4 = Tree::TreeNode.new("GRANDCHILD4", "GRANDCHILD4")
    child1 = Tree::TreeNode.new("CHILD1", "CHILD1")
    child2 = Tree::TreeNode.new("CHILD2", "CHILD2")
    root = Tree::TreeNode.new("Root", "Root")
    child1 << grandchild1 
    child1 << grandchild2
    child2 << grandchild3
    child2 << grandchild4
    root << child1
    root << child2
#    root.print_tree
    expect(get_lca(root, grandchild1, grandchild2).content).to eq "CHILD1"
    expect(get_lca(root, grandchild3, grandchild4).content).to eq "CHILD2"
    expect(get_lca(root, grandchild1, grandchild3).content).to eq "Root"
  end

end
