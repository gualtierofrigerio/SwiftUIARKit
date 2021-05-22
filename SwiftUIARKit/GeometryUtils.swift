//
//  GeometryUtils.swift
//  SwiftUIARKit
//
//  Created by Gualtiero Frigerio on 20/05/21.
//

import Foundation
import ARKit

class GeometryUtils {
    static func calculateDistance(firstNode: SCNNode, secondNode:SCNNode) -> Float {
        let firstPosition = firstNode.position
        let secondPosition = secondNode.position
        var distance:Float = sqrt(
            pow(secondPosition.x - firstPosition.x, 2) +
                pow(secondPosition.y - firstPosition.y, 2) +
                pow(secondPosition.z - firstPosition.z, 2)
        )
        
        distance *= 100 // convert in cm
        return abs(distance)
    }
    
    static func createCircle(fromRaycastResult result:ARRaycastResult) -> SCNNode {
        let circleGeometry = SCNSphere(radius: 0.005)
        
        let material = SCNMaterial()
        material.diffuse.contents = UIColor.systemBlue
        
        circleGeometry.materials = [material]
        
        let circleNode = SCNNode(geometry: circleGeometry)
        circleNode.simdWorldTransform = result.worldTransform
        
        return circleNode
    }
}
