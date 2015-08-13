//
//  Graph.swift
//  DataStructuresInSwift
//
//  Created by Wei-Lun Su on 8/13/15.
//  Copyright (c) 2015 allensu. All rights reserved.
//

import Foundation

class Graph {
    var canvas: Array<Vertex>?
    var isDirected: Bool?
    
    init(){
        canvas = Array<Vertex>()
        isDirected = true
    }
    
    func addVertex(key: String) ->Vertex{
        var childVertex = Vertex()
        childVertex.key = key
        canvas!.append(childVertex)
        return childVertex
    }
}