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
