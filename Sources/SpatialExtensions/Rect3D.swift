import Spatial
import CoreGraphics

public extension Rect3D {
    
    static let one = Rect3D(origin: .zero, size: .one)
}

public extension Rect3D {
    
    mutating func pad(_ padding: CGFloat) {
        self = padded(padding)
    }
    
    func padded(_ padding: CGFloat) -> Rect3D {
        Rect3D(
            origin: Point3D(
                x: origin.x - padding,
                y: origin.y - padding,
                z: origin.z - padding
            ),
            size: Size3D(
                width: size.width + padding * 2,
                height: size.height + padding * 2,
                depth: size.depth + padding * 2
            )
        )
    }
}
