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

public func min(_ lhs: Point3D, _ rhs: Point3D) -> Point3D {
    Point3D(x: min(lhs.x, rhs.x),
            y: min(lhs.y, rhs.y),
            z: min(lhs.z, rhs.z))
}

public func max(_ lhs: Point3D, _ rhs: Point3D) -> Point3D {
    Point3D(x: max(lhs.x, rhs.x),
            y: max(lhs.y, rhs.y),
            z: max(lhs.z, rhs.z))
}

public func abs(_ point: Point3D) -> Point3D {
    Point3D(x: abs(point.x),
            y: abs(point.y),
            z: abs(point.z))
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
    
    static func * (lhs: Point3D, rhs: Point3D) -> Point3D {
        Point3D(x: lhs.x * rhs.x,
                y: lhs.y * rhs.y,
                z: lhs.z * rhs.z)
    }
    
    static func *= (lhs: inout Point3D, rhs: Point3D) {
        lhs = Point3D(x: lhs.x * rhs.x,
                      y: lhs.y * rhs.y,
                      z: lhs.z * rhs.z)
    }
    
    static func / (lhs: Point3D, rhs: Point3D) -> Point3D {
        Point3D(x: lhs.x / rhs.x,
                y: lhs.y / rhs.y,
                z: lhs.z / rhs.z)
    }
    
    static func /= (lhs: inout Point3D, rhs: Point3D) {
        lhs = Point3D(x: lhs.x / rhs.x,
                      y: lhs.y / rhs.y,
                      z: lhs.z / rhs.z)
    }
}

public extension Point3D {
    
    static func * (lhs: Point3D, rhs: Size3D) -> Point3D {
        Point3D(x: lhs.x * rhs.width,
                y: lhs.y * rhs.height,
                z: lhs.z * rhs.depth)
    }
    
    static func / (lhs: Point3D, rhs: Size3D) -> Point3D {
        Point3D(x: lhs.x / rhs.width,
                y: lhs.y / rhs.height,
                z: lhs.z / rhs.depth)
    }
}

public extension Point3D {
    
    static func + (lhs: Point3D, rhs: Double) -> Point3D {
        Point3D(x: lhs.x + rhs,
                y: lhs.y + rhs,
                z: lhs.z + rhs)
    }
    
    static func - (lhs: Point3D, rhs: Double) -> Point3D {
        Point3D(x: lhs.x - rhs,
                y: lhs.y - rhs,
                z: lhs.z - rhs)
    }
    
    // Already defined
//    static func * (lhs: Point3D, rhs: Double) -> Point3D {
//        Point3D(x: lhs.x * rhs,
//                y: lhs.y * rhs,
//                z: lhs.z * rhs)
//    }
    
    // Already defined
//    static func / (lhs: Point3D, rhs: Double) -> Point3D {
//        Point3D(x: lhs.x / rhs,
//                y: lhs.y / rhs,
//                z: lhs.z / rhs)
//    }
}
