class TreeNode {
  var val: Int
  var left: TreeNode?
  var right: TreeNode?
  
  init(val: Int) {
    self.val = val
  }
  convenience init(val: Int, left: TreeNode?, right: TreeNode?) {
    self.init(val: val)
    self.left = left
    self.right = right
  }
  
  //++++++ recursive InOrder
  
  func recursiveInorderTraversal(root: TreeNode?) -> [Int] {
    if root == nil {
      return []
    }
    var result = [Int]()
    result += recursiveInorderTraversal(root!.left)
    result.append(root!.val)
    result += recursiveInorderTraversal(root!.right)
    return result
  }
  
}
