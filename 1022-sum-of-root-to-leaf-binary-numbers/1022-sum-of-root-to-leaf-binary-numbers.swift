/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
 
class Solution {
    var paths: [[TreeNode]] = []
    var result = 0

     func traverse(_ tree: TreeNode, _ path: [TreeNode]) {
        var p = path
        p.append(tree)

        if tree.left == nil && tree.right == nil {
            paths.append(p)
            return
        }

        if let left = tree.left {
            traverse(left, p)
        }

        if let right = tree.right {
            traverse(right, p)
        }
        
          
    }

    



    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        guard let tree = root else {
            return result
        }

        traverse(tree, []) // собрали все пути в paths
    
        var sum = 0
        var multiplier = 1
        
        for path in paths {
            var reversed = path.reversed()
            for number in reversed {
                sum = sum + (number.val * multiplier)
                multiplier = multiplier * 2
            }
            
            result = result + sum

            sum = 0
            multiplier = 1
        }

        return result
    }

   
}


/*
class Solution {
    var paths: [[TreeNode?]] = []
    var result = 0

    

    func traverse (tree: TreeNode?, path: [TreeNode?]) {
        var p = path
        p.append(tree)

        if tree!.left == nil && tree!.right == nil {
            paths.append(path)
            return
        }

        if let left = tree!.left {
            traverse (tree: left, path: p)
        }

        if let right = tree!.right {
            traverse (tree: right, path: p)
        }

    }

func sumRootToLeaf(_ root: TreeNode?) -> Int {
    
    if root == nil {
        return result
    }

    traverse(tree: root, path: [])

    var sum = 0
    var multi = 1

    for path in paths {
    var reverse = path.reversed()
    for value in reverse {
        sum = sum + value!.val * multi
        multi = multi * 2
    }
        result = result + sum
        sum = 0
        multi = 1
        }
        return result
    }

}
*/