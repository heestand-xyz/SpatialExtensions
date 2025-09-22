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
    
    // Already defined
//    static func + (lhs: Size3D, rhs: Size3D) -> Size3D {
//        Size3D(width: lhs.width + rhs.width,
//               height: lhs.height + rhs.height,
//               depth: lhs.depth + rhs.depth)
//    }
    
    static func += (lhs: inout Size3D, rhs: Size3D) {
        lhs = Size3D(width: lhs.width + rhs.width,
                     height: lhs.height + rhs.height,
                     depth: lhs.depth + rhs.depth)
    }
    
    // Already defined
//    static func - (lhs: Size3D, rhs: Size3D) -> Size3D {
//        Size3D(width: lhs.width - rhs.width,
//               height: lhs.height - rhs.height,
//               depth: lhs.depth - rhs.depth)
//    }
    
    static func -= (lhs: inout Size3D, rhs: Size3D) {
        lhs = Size3D(width: lhs.width - rhs.width,
                     height: lhs.height - rhs.height,
                     depth: lhs.depth - rhs.depth)
    }
    
    static func * (lhs: Size3D, rhs: Size3D) -> Size3D {
        Size3D(width: lhs.width * rhs.width,
               height: lhs.height * rhs.height,
               depth: lhs.depth * rhs.depth)
    }
    
    static func *= (lhs: inout Size3D, rhs: Size3D) {
        lhs = Size3D(width: lhs.width * rhs.width,
                     height: lhs.height * rhs.height,
                     depth: lhs.depth * rhs.depth)
    }
    
    static func / (lhs: Size3D, rhs: Size3D) -> Size3D {
        Size3D(width: lhs.width / rhs.width,
               height: lhs.height / rhs.height,
               depth: lhs.depth / rhs.depth)
    }
    
    static func /= (lhs: inout Size3D, rhs: Size3D) {
        lhs = Size3D(width: lhs.width / rhs.width,
                     height: lhs.height / rhs.height,
                     depth: lhs.depth / rhs.depth)
    }
}

public extension Size3D {
    
    static func * (lhs: Size3D, rhs: Point3D) -> Size3D {
        Size3D(width: lhs.width * rhs.x,
               height: lhs.height * rhs.y,
               depth: lhs.depth * rhs.z)
    }
    
    static func / (lhs: Size3D, rhs: Point3D) -> Size3D {
        Size3D(width: lhs.width / rhs.x,
               height: lhs.height / rhs.y,
               depth: lhs.depth / rhs.z)
    }
}

public extension Size3D {
    
    static func + (lhs: Size3D, rhs: Double) -> Size3D {
        Size3D(width: lhs.width + rhs,
               height: lhs.height + rhs,
               depth: lhs.depth + rhs)
    }
    
    static func - (lhs: Size3D, rhs: Double) -> Size3D {
        Size3D(width: lhs.width - rhs,
               height: lhs.height - rhs,
               depth: lhs.depth - rhs)
    }
    
    // Already defined
//    static func * (lhs: Size3D, rhs: Double) -> Size3D {
//        Size3D(width: lhs.width * rhs,
//               height: lhs.height * rhs,
//               depth: lhs.depth * rhs)
//    }
    
    // Already defined
//    static func / (lhs: Size3D, rhs: Double) -> Size3D {
//        Size3D(width: lhs.width / rhs,
//               height: lhs.height / rhs,
//               depth: lhs.depth / rhs)
//    }
}
