import XCTest
@testable import package

final class packageTests: XCTestCase {
    func testFileListFunc() {
        let pack = ListFiles.listFiles()
        XCTAssert(pack.count > 0)
    }
}
