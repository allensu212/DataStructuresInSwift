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
    
    //MARK: Traversal algorithms

    func traverseGraphBFS(startingVertice: Vertex){
        var graphQueue: Queue<Vertex> = Queue<Vertex>()
        graphQueue.enQueue(startingVertice)
        
        while !graphQueue.isEmpty() {
            
            let vItem = graphQueue.deQueue() as Vertex!
            
            //add unvisited vertices to the queue
            for edge in vItem.neighbors! {
                if edge.neighbor?.visited == false {
                    graphQueue.enQueue(edge.neighbor!)
                }
            }
            vItem.visited = true
        }
    }
    
    //MARK: Adding Vertex or Edge
    
    func addVertex(key: String) ->Vertex{
        var childVertex = Vertex()
        childVertex.key = key
        canvas!.append(childVertex)
        return childVertex
    }
    
    func addEdge(source: Vertex, neighbor: Vertex, weight: Int){
        
        var newEdge = Edge()
        newEdge.neighbor = neighbor
        newEdge.weight = weight
        source.neighbors?.append(newEdge)
        
        if isDirected == false {
            var reverseEdge = Edge()
            reverseEdge.neighbor = source
            reverseEdge.weight = weight
            neighbor.neighbors?.append(reverseEdge)
        }
    }
}