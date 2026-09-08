import Spatial
import CoreGraphics

extension Rect3D {
    public var in2D: CGRect {
        CGRect(x: origin.x, y: origin.y, width: size.width, height: size.height)
    }
}

public extension Rect3D {
    
    static let one = Rect3D(origin: .zero, size: .one)
}

public extension Rect3D {
    
    mutating func combine(_ frame: Rect3D) {
        self = combined(frame)
    }

    func combined(_ frame: Rect3D) -> Rect3D {
        Rect3D(
            origin: Point3D(
                x: Swift.min(min.x, frame.min.x),
                y: Swift.min(min.y, frame.min.y),
                z: Swift.min(min.z, frame.min.z)
            ),
            size: Size3D(
                width: Swift.max(max.x, frame.max.x) - Swift.min(min.x, frame.min.x),
                height: Swift.max(max.y, frame.max.y) - Swift.min(min.y, frame.min.y),
                depth: Swift.max(max.z, frame.max.z) - Swift.min(min.z, frame.min.z)
            )
        )
    }
}

public extension Rect3D? {
    
    mutating func combine(_ frame: Rect3D) {
        self = combined(frame)
    }

    func combined(_ frame: Rect3D) -> Rect3D {
        guard let self else { return frame }
        return self.combined(frame)
    }
}

public extension [Rect3D] {
    
    var combined: Rect3D? {
        if isEmpty { return nil }
        var combinedFrame: Rect3D = first!
        for frame in dropFirst() {
            combinedFrame.combine(frame)
        }
        return combinedFrame
    }
}

public extension Rect3D {
    
    mutating func pad(_ padding: CGFloat) {
        self = padded(padding)
    }
    
    func padded(_ padding: CGFloat) -> Rect3D {
        Rect3D(
            origin: origin - padding,
            size: size + padding * 2
        )
    }
}

public extension Rect3D {
    
    mutating func pad(_ padding: Size3D) {
        self = padded(padding)
    }
    
    func padded(_ padding: Size3D) -> Rect3D {
        Rect3D(
            origin: origin - padding,
            size: size + padding * 2
        )
    }
}

public extension Rect3D {
    
    static func * (lhs: Rect3D, rhs: Double) -> Rect3D {
        Rect3D(
            origin: lhs.origin * rhs,
            size: lhs.size * rhs
        )
    }
    
    static func / (lhs: Rect3D, rhs: Double) -> Rect3D {
        Rect3D(
            origin: lhs.origin / rhs,
            size: lhs.size / rhs
        )
    }
}
