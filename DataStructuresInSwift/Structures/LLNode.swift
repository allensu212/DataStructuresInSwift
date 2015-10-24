//
//  LLNode.swift
//  DataStructuresInSwift
//
//  Created by Wei-Lun Su on 8/12/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

import Foundation

class LLNode<T> {
    var key: T!
    var previousNode: LLNode!
    var nextNode: LLNode!
}