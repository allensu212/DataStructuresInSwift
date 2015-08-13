//
//  BSTree.swift
//  DataStructuresInSwift
//
//  Created by Wei-Lun Su on 8/12/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

import Foundation

class AVLTree <T:Comparable> {
    var key: T?
    var leftTree: AVLTree?
    var rightTree: AVLTree?
    
    func addNode(key: T){
        
        if self.key == nil {
            self.key = key
            return
        }
        
        if key > self.key {
            if self.rightTree != nil {
                rightTree?.addNode(key)
            }else {
                var rightChild = AVLTree()
                rightChild.key = key
                self.rightTree = rightChild
            }
        }else {
            if self.leftTree != nil {
                leftTree?.addNode(key)
            }else {
                var leftChild = AVLTree()
                leftChild.key = key
                self.leftTree = leftChild
            }
        }
    }
}