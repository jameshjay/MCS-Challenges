 
 
 import Foundation
 
 //separateFile, structure of linked list
 //singly linkedlists
 class LinkedListNode<T> {
  
  var value: T!
  var nextPointer: LinkedListNode?
  var currentNode: LinkedListNode?
  
 }
 
 //                         (ITERATIVE)
 //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 
 
 public class LinkedList<T: Equatable> {
  
  
  //              set the head, get the number of nodes in the link, if any
  
  //create a new LinkedListNode instance
  private var headPointer = LinkedListNode<T>()
  
  
  //the number of items
  var count: Int {
    
    //if the LL is empty
    if headPointer.value == nil   {
      return 0
    }
      
      //if not empty then
    else  {
      
      //set headPointer to currentNode @@@ how to know currentNode?
      // this would be the first one
      var currentNode = headPointer
      var x = 1
      
      //cycle through the list of items
      //while nextPointer node being pointed to is not nil
      while currentNode.nextPointer != nil   {
        //set nextPointer pointed node  as currentNode node
        currentNode = currentNode.nextPointer!
        x++
      }
      
      return x
      //return total nodes
      
    }
  }
  
  //                      CHECK IF EMPTY
  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  
  func isEmpty() -> Bool! {
    
    // returns true if count is 0 or if the list's headPointer is nil
    return self.count == 0 || headPointer.value == nil
    
  }
  
  
  
  //               append a new item to a linked list
  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  
  func addLink(value: T) {
    
    
    //if no value in headPointer node, insert value
    if (headPointer.value == nil  ) {
      headPointer.value = value
      print(headPointer.value)
      return
    }
    
    
    //establish the iteration variables
    //make the currentNode the headPointer
    // beginning of the link is the headpointer
    var currentNode: LinkedListNode? =  headPointer
    
    //while currentNode is not nil do check
    while (currentNode != nil  ) {
      //if the currentNode is not pointing to nil  (end)
      if currentNode?.nextPointer == nil   {
        //create child node
        let newChildNode: LinkedListNode = LinkedListNode<T>()
        //insert value to child node
        newChildNode.value = value
        currentNode!.nextPointer = newChildNode
        break
      }
        
      else {
        currentNode = currentNode?.nextPointer
        print(currentNode)
        print("doing it")
      }
      
      
    } //end while
    
  }
  
  
  
  //            print all the values in the LL
  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  
  func printAllvalues() {
    
    // set a new current node, it's always set to headpointer which is the beginning
    var currentNode: LinkedListNode! = headPointer
    
    
    //assign the nextPointer instance
    while (currentNode != nil  ) {
      print("link item is: \(currentNode.value)")
      //traverse the node
      currentNode = currentNode.nextPointer
    }
    
    //until pointer == nil
    
    
  }
  
  //                obtain link at a specific index
  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  
  func linkAtIndex(index: Int) ->LinkedListNode<T>! {
    
    //check for nil   conditions
    if ((index < 0) || (index > (self.count - 1)) || (headPointer.value == nil  )) {
      return nil
    }
      
      
    else  {
      var currentNode: LinkedListNode<T>! = headPointer
      var x: Int = 0
      
      //cycle through the list of items
      while (index != x) {
        currentNode = currentNode.nextPointer
        x++
      }
      
      return currentNode
      
    } //end else
    
    
  } //end function
  
  
  
  //      merge two sorted lists
  //      pointer tail points to the last node in the result list
  
  // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  func mergeTwoLists(var l1 l1: LinkedListNode<Int>?, var l2: LinkedListNode<Int>?) -> LinkedListNode<Int>? {
    print(" ####### starting the DUMMY")
    let dummy: LinkedListNode = LinkedListNode<Int>()
    // tail currently points to the dummy node, first node in list
    var tail: LinkedListNode? = dummy
    while l1 != nil && l2 != nil {
      print(tail?.value, "TAIL")
      
      if l1!.value < l2!.value {
        print("l1 < l2")
        print(l1?.value, "l1 value")
        tail?.nextPointer = l1
        print(tail?.nextPointer?.value)
        l1 = l1?.nextPointer
        print(l1, "l1 new")
      } else {
        print("l1 > l2")
        tail?.nextPointer = l2
        print(tail?.nextPointer, "tail nextpointer")
        l2 = l2?.nextPointer
        print(l2, "l2 nextPointer pointer")
      }
      // update tail pointer
      
      tail = tail?.nextPointer
      
      
    }
    
    
    //once a side reaches nil, update tailpointer
    print("how many times entered")
    tail?.nextPointer = l1 != nil ? l1 : l2
    print(" ******** how many times accessed")
    //only accessed once both l1 and l2 are nil (done)
    print(dummy.nextPointer!.value, "dummy nextPointer value")
    return dummy.nextPointer
  }
  
  
  
  
  
  // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  
  // you just pass in one node, at the head, they're all connected already. Don't try to pass in the whole LL, not possible
  func deleteDuplicates(head: LinkedListNode<T>?) -> LinkedListNode<T>? {
    if head == nil {
      return nil
    }
    var currentNode: LinkedListNode? = head
    while currentNode?.nextPointer != nil {
      if currentNode?.value == currentNode?.nextPointer?.value {
        currentNode?.nextPointer = currentNode?.nextPointer?.nextPointer
      } else {
        currentNode = currentNode?.nextPointer
      }
    }
    return head;
  }
 }//end class
 
 //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 
 
 var x = LinkedList<Int>()
 x.addLink(2)
 x.addLink(4)
 x.addLink(6)
 
 var y = LinkedList<Int>()
 y.addLink(1)
 y.addLink(3)
 y.addLink(5)
 y.addLink(7)
 
 
 
 
 x.printAllvalues()
 print(x.headPointer.value, "head value")
 
 x.deleteDuplicates(x.headPointer)
 print("deleteD")
 x.printAllvalues()
 
 
 // when merged it only returns back one node
 var merged = x.mergeTwoLists(l1: x.linkAtIndex(0), l2: y.linkAtIndex(0))
 print(merged!.value)
 print(merged!.nextPointer!.value)
 print(merged!.nextPointer!.nextPointer!.value)
 
 
 
