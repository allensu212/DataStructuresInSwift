//
//  LinkedList.swift
//  DataStructuresInSwift
//
//  Created by Wei-Lun Su on 8/12/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

import Foundation

class LinkedList<T: Equatable> {
    
    var count: Int!
    var headNode: LLNode<T> = LLNode<T>()
    
    func addLink(key: T) {
        if headNode.key == nil {
            headNode.key = key
            return
        }
        
        var currentNode: LLNode? = headNode
        
        while currentNode != nil {
            if currentNode?.nextNode != nil {
                currentNode = currentNode?.nextNode
            }else {
                var childNode = LLNode<T>()
                childNode.key = key
                childNode.previousNode = currentNode
                currentNode!.nextNode = childNode
                break
            }
        }
    }
    
    func removeLinkAtIndex(index: Int) {
        
        //check nil conditions
        if index < 0 || index > (self.count - 1) || headNode.key == nil {
            print("link index doesn't exist")
            return
        }
        
        var currentNode = headNode
        var trailingNode: LLNode<T>?
        var listIndex: Int = 0
        
        //determine if removing the head node
        if index == 0 {
            currentNode = currentNode.nextNode
            headNode = currentNode
            return
        }
        
    }
    
}