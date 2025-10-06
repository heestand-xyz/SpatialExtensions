//
//  Angle3D.swift
//  
//
//  Created by Anton Heestand on 2024-03-19.
//

import SwiftUI
import Spatial

public struct Angle3D: Codable, Equatable, Hashable, Sendable {
    
    public static let zero = Angle3D(x: .zero, y: .zero, z: .zero)
    
    public var x: Angle2D
    public var y: Angle2D
    public var z: Angle2D
    
    public var xRotation: Rotation3D {
        Rotation3D(angle: x, axis: .x)
    }
    
    public var yRotation: Rotation3D {
        Rotation3D(angle: y, axis: .y)
    }
    
    public var zRotation: Rotation3D {
        Rotation3D(angle: z, axis: .z)
    }
    
    public var xAngle: Angle {
        get {
            .radians(x.radians)
        }
        set {
            x = Angle2D(radians: newValue.radians)
        }
    }
    
    public var yAngle: Angle {
        get {
            .radians(y.radians)
        }
        set {
            y = Angle2D(radians: newValue.radians)
        }
    }
    
    public var zAngle: Angle {
        get {
            .radians(z.radians)
        }
        set {
            z = Angle2D(radians: newValue.radians)
        }
    }
    
    public init(x: Angle2D = .zero, y: Angle2D = .zero, z: Angle2D = .zero) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public static func angles(x: Angle = .zero, y: Angle = .zero, z: Angle = .zero) -> Angle3D {
        self.init(x: Angle2D(radians: x.radians),
                  y: Angle2D(radians: y.radians),
                  z: Angle2D(radians: z.radians))
    }
}
