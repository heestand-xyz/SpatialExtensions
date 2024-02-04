import XCTest
@testable import SpatialExtensions
import Spatial

final class Size3DTests: XCTestCase {
    
    func testPlace() throws {
            
        /// Fit
        
        XCTAssertEqual(Size3D(width: 200, height: 50, depth: 50)
            .place(in: Size3D(width: 100, height: 100, depth: 100),
                   placement: .fit), Size3D(width: 100, height: 25, depth: 25))
            
        XCTAssertEqual(Size3D(width: 200, height: 200, depth: 50)
            .place(in: Size3D(width: 100, height: 100, depth: 100),
                   placement: .fit), Size3D(width: 100, height: 100, depth: 25))
            
        XCTAssertEqual(Size3D(width: 400, height: 200, depth: 50)
            .place(in: Size3D(width: 100, height: 100, depth: 100),
                   placement: .fit), Size3D(width: 100, height: 50, depth: 12.5))
        
        XCTAssertEqual(Size3D(width: 200, height: 50, depth: 50)
            .place(in: Size3D(width: 100, height: 200, depth: 100),
                   placement: .fit), Size3D(width: 100, height: 25, depth: 25))
        
        XCTAssertEqual(Size3D(width: 200, height: 50, depth: 50)
            .place(in: Size3D(width: 100, height: 200, depth: 100),
                   placement: .fit), Size3D(width: 100, height: 25, depth: 25))
        
        XCTAssertEqual(Size3D(width: 100, height: 200, depth: 50)
            .place(in: Size3D(width: 100, height: 200, depth: 100),
                   placement: .fit), Size3D(width: 100, height: 200, depth: 50))
        
        /// Fill
        
        XCTAssertEqual(Size3D(width: 200, height: 50, depth: 50)
            .place(in: Size3D(width: 100, height: 100, depth: 100),
                   placement: .fill), Size3D(width: 400, height: 100, depth: 100))
            
        XCTAssertEqual(Size3D(width: 200, height: 200, depth: 50)
            .place(in: Size3D(width: 100, height: 100, depth: 100),
                   placement: .fill), Size3D(width: 400, height: 400, depth: 100))

        XCTAssertEqual(Size3D(width: 400, height: 200, depth: 50)
            .place(in: Size3D(width: 100, height: 100, depth: 100),
                   placement: .fill), Size3D(width: 800, height: 400, depth: 100))

        XCTAssertEqual(Size3D(width: 200, height: 50, depth: 50)
            .place(in: Size3D(width: 100, height: 200, depth: 100),
                   placement: .fill), Size3D(width: 800, height: 200, depth: 200))
    }
}
