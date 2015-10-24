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