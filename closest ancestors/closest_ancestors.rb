module ClosestAncestors

  def get_lca(root, n1, n2)
    return nil if root == nil
    return root if root == n1 || root == n2
    left_lca = get_lca(root.children.first, n1, n2)
    right_lca = get_lca(root.children[1], n1, n2)
    return root if (left_lca != nil and right_lca != nil)
    if left_lca != nil then return left_lca else return right_lca end
  end
  
end