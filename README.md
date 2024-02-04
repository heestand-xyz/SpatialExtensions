# Spatial Extensions

## Package

```swift
.package(url: "https://github.com/heestand-xyz/SpatialExtensions", from: "0.1.0")
```

## Import

```swift
import Spatial
import SpatialExtensions
```

## Place

```swift
let contentSize = Size3D(width: 200, height: 50, depth: 50)
let containerSize = Size3D(width: 100, height: 100, depth: 100)
XCTAssertEqual(conentSize.place(in: containerSize, placement: .fit), Size3D(width: 100, height: 25, depth: 25))
```
