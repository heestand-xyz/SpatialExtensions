//
//  File.swift
//  
//
//  Created by Heestand, Anton Norman | Anton | GSSD on 2024-03-19.
//

import SwiftUI
import Spatial

public struct Angle3D: Codable, Equatable, Hashable {
    
    public static let zero = Angle3D(x: .zero, y: .zero, z: .zero)
    
    public let x: Angle2D
    public let y: Angle2D
    public let z: Angle2D
    
    public var xRotation: Rotation3D {
        Rotation3D(angle: x, axis: .x)
    }
    
    public var yRotation: Rotation3D {
        Rotation3D(angle: y, axis: .y)
    }
    
    public var zRotation: Rotation3D {
        Rotation3D(angle: z, axis: .z)
    }
    
    public init(x: Angle2D, y: Angle2D, z: Angle2D) {
        self.x = x
        self.y = y
        self.z = z
    }
}
