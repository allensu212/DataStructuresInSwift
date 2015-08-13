//
//  Vertex.swift
//  DataStructuresInSwift
//
//  Created by Wei-Lun Su on 8/13/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

import Foundation

class Vertex {
    var key: String?
    var neighbors: Array<Edge>?
    
    init(){
        self.neighbors = Array<Edge>()
    }
}