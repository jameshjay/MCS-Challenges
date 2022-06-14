//
//  ViewController.swift
//  BST
//
//  Created by James  on 12/1/16.
//  Copyright © 2016 James . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    var x = BST_Structure()
    x.addLink(5)
    x.addLink(3)
    x.addLink(7)
    x.addLink(2)
    x.addLink(4)
    x.addLink(8)
    x.addLink(23)
    x.addLink(0)
    x.addLink(1)
    
    var inorder = x.recursiveInorderTraversal(x.headPointer)
    print(inorder)
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

