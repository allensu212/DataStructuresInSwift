//
//  Edge.swift
//  DataStructuresInSwift
//
//  Created by Wei-Lun Su on 8/13/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

import Foundation

class Edge {
    var weight: Int?
    var neighbor: Vertex?
    
    init(){
        weight = 0
        self.neighbor = Vertex()
    }
}