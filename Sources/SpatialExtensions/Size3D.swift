import Spatial

public extension Size3D {
    
    static let one = Size3D(width: 1.0, height: 1.0, depth: 1.0)
}

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
