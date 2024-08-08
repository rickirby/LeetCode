import UIKit


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root else {
            return 0
        }
        
        return max(maxDepth(root.left), maxDepth(root.right)) + 1
    }
}


//let treeNode = TreeNode(1, nil, TreeNode(2))
let treeNode = TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(17)))
print(Solution().maxDepth(treeNode))
