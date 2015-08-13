//
//  ViewController.swift
//  DataStructuresInSwift
//
//  Created by Wei-Lun Su on 8/12/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
    let numberList : Array<Int> = [8, 2, 10, 9, 11, 1, 7]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBinarySearchTree()
    }
    
    func addBinarySearchTree(){
        var rootNode = AVLTree<Int>()
        for number in numberList {
            rootNode.addNode(number)
        }
    }
    
}

