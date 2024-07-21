import Spatial
import simd

public extension Vector3D {
    
    var simd3: SIMD3<Float> {
        SIMD3<Float>(x: Float(x),
                     y: Float(y),
                     z: Float(z))
    }
}

public extension SIMD3<Float> {
    
    var vector3D: Vector3D {
        Vector3D(self)
    }
}

public extension Point3D {
    
    var vector3D: Vector3D {
        Vector3D(self)
    }
}

public extension Size3D {
    
    var vector3D: Vector3D {
        Vector3D(self)
    }
}

public extension Vector3D {
    
    static func + (lhs: Vector3D, rhs: Size3D) -> Vector3D {
        Vector3D(x: lhs.x + rhs.width,
                 y: lhs.y + rhs.height,
                 z: lhs.z + rhs.depth)
    }
    
    static func += (lhs: inout Vector3D, rhs: Size3D) {
        lhs = Vector3D(x: lhs.x + rhs.width,
                       y: lhs.y + rhs.height,
                       z: lhs.z + rhs.depth)
    }
    
    static func - (lhs: Vector3D, rhs: Size3D) -> Vector3D {
        Vector3D(x: lhs.x - rhs.width,
                 y: lhs.y - rhs.height,
                 z: lhs.z - rhs.depth)
    }
    
    static func -= (lhs: inout Vector3D, rhs: Size3D) {
        lhs = Vector3D(x: lhs.x - rhs.width,
                       y: lhs.y - rhs.height,
                       z: lhs.z - rhs.depth)
    }
    
    static func * (lhs: Vector3D, rhs: Size3D) -> Vector3D {
        Vector3D(x: lhs.x * rhs.width,
                 y: lhs.y * rhs.height,
                 z: lhs.z * rhs.depth)
    }
    
    static func *= (lhs: inout Vector3D, rhs: Size3D) {
        lhs = Vector3D(x: lhs.x * rhs.width,
                       y: lhs.y * rhs.height,
                       z: lhs.z * rhs.depth)
    }
    
    static func / (lhs: Vector3D, rhs: Size3D) -> Vector3D {
        Vector3D(x: lhs.x / rhs.width,
                 y: lhs.y / rhs.height,
                 z: lhs.z / rhs.depth)
    }
    
    static func /= (lhs: inout Vector3D, rhs: Size3D) {
        lhs = Vector3D(x: lhs.x / rhs.width,
                       y: lhs.y / rhs.height,
                       z: lhs.z / rhs.depth)
    }
}
