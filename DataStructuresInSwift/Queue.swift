//
//  Queue.swift
//  DataStructuresInSwift
//
//  Created by Wei-Lun Su on 8/13/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

import Foundation

class Queue<T> {
    
    private var top: QNode<T>! = QNode<T>()
    
    func isEmpty() ->Bool{
        if let topItem: T = self.top.key {
            return false
        }else {
            return true
        }
    }
    
    //MARK: enQueue and deQueue
    
    func deQueue() ->T?{
        let topItem = self.top?.key
        
        if topItem == nil {
            return nil
        }
        
        var queueItem = top.key!
        
        if let nextItem = top.nextNode {
            top = nextItem
        }else {
            top = QNode<T>()
        }
        
        return queueItem
    }
    
    func enQueue(key: T){
        
        if top == nil {
            top = QNode<T>()
        }
        if top.key == nil {
            top.key = key
            return
        }
        
        var current = top
        
        while current.nextNode != nil {
            current = current.nextNode!
        }
        
        var childToUse: QNode<T> = QNode<T>()
        childToUse.key = key
        current.nextNode = childToUse
    }
}