//making my own binary search tree

class BST {
  
  //qualities of a node
  var valueToBeAdded: Int?
  var leftPointer: BST?
  var rightPointer: BST?
  
  
  //create a function that will add the node
  //the parameter will take in a valueToBeAdded of generic type
  func addingNode(valueToBeAdded: Int) -> BST {
    
    
    //if the value is empty, the root, add it
    if (self.valueToBeAdded == nil) {
      self.valueToBeAdded = valueToBeAdded
      
    }
    
    //else, if value is less than the root
    if (valueToBeAdded < self.valueToBeAdded) {
      //add to the left
      if(self.leftPointer != nil) {
        //call function again but on the leftpointer
        leftPointer?.addingNode(valueToBeAdded)
      }
        
      else {
        //once left side reaches nil, create a new node to add
        var leftChild: BST = BST()
        leftChild.valueToBeAdded = valueToBeAdded
        self.leftPointer = leftChild
        //return root
        
      }
    }
    
    if (valueToBeAdded > self.valueToBeAdded) {
      if(self.rightPointer != nil) {
        rightPointer?.addingNode(valueToBeAdded)
      }
      else {
        var rightChild: BST = BST()
        rightChild.valueToBeAdded = valueToBeAdded
        self.rightPointer = rightChild
        // return root
        
      }
    }
    
    print("how many times returning")
    return root
  }
  
  //    func buildClosureTree() -> BST{
  //
  //
  //    //test for new instance
  //    let avlTest: BST = BST()
  //
  //
  //    //provide a balanced list
  //
  //
  //    //build the tree list
  ////    avlTest.addingNode(100)
  ////    avlTest.addingNode(12)
  ////    avlTest.addingNode(132)
  ////    avlTest.addingNode(1)
  ////    avlTest.addingNode(3)
  //
  //
  //
  //
  //    //tree balance check
  //
  //
  //    return avlTest
  //
  //    }
  
  func recursiveInorderTraversal(root: BST?) -> [Int] {
    print(1)
    if root == nil {
      print(2)
      
      return []
    }
    //store result in array
    var result = [Int]()
    print(3)
    
    result += recursiveInorderTraversal(root!.leftPointer)
    print(4)
    
    result.append(root!.valueToBeAdded!)
    print(5)
    
    result += recursiveInorderTraversal(root!.rightPointer)
    print(6)
    return result
  }
  
  //    func iterativeInorder(root: BST?) -> [Int] {
  //        if root == nil {
  //            return []
  //        }
  //        var result: [Int] = []
  //        var stack: [BST] = []
  //        var visitedNodes = Set<BST>()
  //        var currNode: BST! = root
  //        while currNode != nil {
  //            if currNode.left != nil && !visitedNodes.contains(currNode.left!) {
  //                stack.append(currNode)
  //                currNode = currNode.leftPointer!
  //                continue
  //            }
  //            if !visitedNodes.contains(currNode){
  //                result.append(currNode.valueToBeAdded!)
  //                visitedNodes.insert(currNode)
  //            }
  //            if currNode.right != nil && !visitedNodes.contains(currNode.rightPointer!) {
  //                stack.append(currNode)
  //                currNode = currNode.rightPointer!
  //                continue
  //            }
  //            currNode = stack.count > 0 ? stack.removeLast() : nil
  //        }
  //        return result
  //    }
  
  func levelOrderTraversal(root: BST) -> [[Int]]{
    
    var finalarrayofarrays = [[Int]]()
    var currentLevelNode = [BST]()
    var nextLevelNode = [BST]()
    var tempArray = [Int]()
    
    //only one node gets appended
    print(root.valueToBeAdded)
    print(root.leftPointer?.valueToBeAdded)
    print(root.rightPointer?.valueToBeAdded)
    currentLevelNode.append(root)
    
    while !currentLevelNode.isEmpty{
      //always being moved over
      let currentNode = currentLevelNode.removeAtIndex(0)
      print(currentNode.valueToBeAdded, "new node")
      tempArray.append(currentNode.valueToBeAdded!)
      print("xxxx")
      
      if let left = currentNode.leftPointer{
        nextLevelNode.append(left)
      }
      if let right = currentNode.rightPointer{
        nextLevelNode.append(right)
      }
      
      if currentLevelNode.isEmpty {
        print("entered how many times")
        //let arr = tempArray
        finalarrayofarrays.append(tempArray)
        currentLevelNode += nextLevelNode
        nextLevelNode.removeAll()
        tempArray.removeAll()
      }
      
    }
    
    return finalarrayofarrays
  }
  
  func isValidBSTRecursionHelper(curr curr: BST?, inout prev: BST?) -> Bool {
    if curr == nil {
      return true
    } else {
      if isValidBSTRecursionHelper(curr: curr?.leftPointer, prev: &prev) == false {
        return false
      }
      if prev != nil && prev?.valueToBeAdded > curr?.valueToBeAdded {
        return false
      }
      prev = curr
      return isValidBSTRecursionHelper(curr: curr?.rightPointer, prev: &prev)
    }
  }
  // t = O(N), average s = O(logN), worst s = O(N)
  func isValidBST(root: BST?) -> Bool {
    var prev: BST? = nil
    return isValidBSTRecursionHelper(curr: root, prev: &prev)
  }
  
  
}







//create a new root
// var numbers = [9,7,8,6,1,5,2,3,4]
//var numbers = [15,13,17,8,14,16,19]
var numbers = [16,14,8,17,13,15]
var root = BST()

for i in numbers {
  root.addingNode(i)
}
//root.addingNode(9)
//root.addingNode(21)
//root.addingNode(4)
//root.addingNode(22)
//root.addingNode(0)


//var car = root.buildClosureTree()
//print(car)
//print(root.recursiveInorderTraversal(car))

var BST1 = root.recursiveInorderTraversal(root)
BST1.insert(444, atIndex: 3)
var NOTBST = root.levelOrderTraversal(root)
print(root.levelOrderTraversal(root))
root.isValidBST(root)

