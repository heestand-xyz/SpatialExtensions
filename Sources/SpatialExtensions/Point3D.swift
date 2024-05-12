import Spatial
import simd

public extension Point3D {
    
    var simd3: SIMD3<Float> {
        SIMD3<Float>(x: Float(x),
                     y: Float(y),
                     z: Float(z))
    }
}

public extension SIMD3<Float> {
    
    var point3D: Point3D {
        Point3D(self)
    }
}

public extension Size3D {
    
    var point3D: Point3D {
        Point3D(self)
    }
}

public extension Vector3D {
    
    var point3D: Point3D {
        Point3D(self)
    }
}

public extension Point3D {
    
    static func + (lhs: Point3D, rhs: Point3D) -> Point3D {
        Point3D(x: lhs.x + rhs.x,
                y: lhs.y + rhs.y,
                z: lhs.z + rhs.z)
    }
    
    static func += (lhs: inout Point3D, rhs: Point3D) {
        lhs = Point3D(x: lhs.x + rhs.x,
                      y: lhs.y + rhs.y,
                      z: lhs.z + rhs.z)
    }
    
    static func - (lhs: Point3D, rhs: Point3D) -> Point3D {
        Point3D(x: lhs.x - rhs.x,
                y: lhs.y - rhs.y,
                z: lhs.z - rhs.z)
    }
    
    static func -= (lhs: inout Point3D, rhs: Point3D) {
        lhs = Point3D(x: lhs.x - rhs.x,
                      y: lhs.y - rhs.y,
                      z: lhs.z - rhs.z)
    }
    
    static func * (lhs: Point3D, rhs: Size3D) -> Point3D {
        Point3D(x: lhs.x * rhs.width,
                y: lhs.y * rhs.height,
                z: lhs.z * rhs.depth)
    }
    
    static func *= (lhs: inout Point3D, rhs: Point3D) {
        lhs = Point3D(x: lhs.x * rhs.x,
                      y: lhs.y * rhs.y,
                      z: lhs.z * rhs.z)
    }
    
    static func / (lhs: Point3D, rhs: Size3D) -> Point3D {
        Point3D(x: lhs.x / rhs.width,
                y: lhs.y / rhs.height,
                z: lhs.z / rhs.depth)
    }
    
    static func /= (lhs: inout Point3D, rhs: Point3D) {
        lhs = Point3D(x: lhs.x / rhs.x,
                      y: lhs.y / rhs.y,
                      z: lhs.z / rhs.z)
    }
}
