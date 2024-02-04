import Spatial

extension Size3D {
    
    public enum Placement {
        case stretch
        case fit
        case fill
        case fixed
    }
    
    public func place(in size: Size3D, placement: Placement, roundToVoxels: Bool = false) -> Size3D {
       
        var size: Size3D = {
            switch placement {
            case .fit:
                
                let scaleFactorWidth = size.width / width
                let scaleFactorHeight = size.height / height
                let scaleFactorDepth = size.depth / depth
                
                let scaleFactor = min(scaleFactorWidth, scaleFactorHeight, scaleFactorDepth)

                let scaledWidth = width * scaleFactor
                let scaledHeight = height * scaleFactor
                let scaledDepth = depth * scaleFactor
                
                return Size3D(width: scaledWidth, height: scaledHeight, depth: scaledDepth)
                
            case .fill:
                
                let scaleFactorWidth = size.width / width
                let scaleFactorHeight = size.height / height
                let scaleFactorDepth = size.depth / depth
                
                let scaleFactor = max(scaleFactorWidth, scaleFactorHeight, scaleFactorDepth)

                let scaledWidth = width * scaleFactor
                let scaledHeight = height * scaleFactor
                let scaledDepth = depth * scaleFactor
                
                return Size3D(width: scaledWidth, height: scaledHeight, depth: scaledDepth)
                
            case .fixed:
                return self
            case .stretch:
                return size
            }
        }()
        
        if roundToVoxels {
            size = Size3D(width: max(1, round(size.width)),
                          height: max(1, round(size.height)),
                          depth: max(1, round(size.depth)))
        }
        
        return size
    }
}
