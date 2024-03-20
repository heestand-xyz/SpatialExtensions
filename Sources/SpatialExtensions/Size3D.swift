import Spatial

public extension Size3D {
    
    var simd3: SIMD3<Float> {
        SIMD3<Float>(x: Float(width),
                     y: Float(height),
                     z: Float(depth))
    }
}

public extension Point3D {
    
    var size3D: Size3D {
        Size3D(self)
    }
}

public extension Vector3D {
    
    var size3D: Size3D {
        Size3D(self)
    }
}

public extension Size3D {
    
    static func / (lhs: Size3D, rhs: Size3D) -> Size3D {
        Size3D(width: lhs.width / rhs.width,
               height: lhs.height / rhs.height,
               depth: lhs.depth / rhs.depth)
    }
}
