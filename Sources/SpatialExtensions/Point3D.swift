import Spatial

public extension Point3D {
    
    static func + (lhs: Point3D, rhs: Point3D) -> Point3D {
        Point3D(x: lhs.x + rhs.x, 
                y: lhs.y + rhs.y,
                z: lhs.z + rhs.z)
    }
}
