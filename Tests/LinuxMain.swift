import XCTest

import mccTests

var tests = [XCTestCaseEntry]()
tests += mccTests.allTests()
XCTMain(tests)
