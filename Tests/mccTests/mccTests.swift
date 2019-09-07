import XCTest
import class Foundation.Bundle

final class mccTests: XCTestCase {

//    func testMorseDictCount() {
//        let morseData = MorseCodeList()
//        XCTAssertEqual(morseData.morseCodeDictionary.count, 91, "Morse code dictionary should contain 91 items.")
//    }
//    
//    func testProsignsDictCount() {
//        let prosignData = MorseCodeList()
//        XCTAssertEqual(prosignData.prosigns.count, 7, "Prosign dictionary should contain 7 items.")
//    }

    /// Returns path to the built products directory.
    var productsDirectory: URL {
      #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
      #else
        return Bundle.main.bundleURL
      #endif
    }

//    static var allTests = [
//        ("testMorseDictCount", testMorseDictCount), ("testProsignsDictCount", testProsignsDictCount)
//    ]
}
