//
//  FizzBuzzTests.swift
//  LeetCode-SwiftTests
//
//  Created by Pratik Patel on 23/01/21.
//

import XCTest

struct FizzBuzz {
    func getString(for: Int) -> String {
        return "1"
    }
}

class FizzBuzzTests: XCTestCase {

    func test_getString_shouldReturnOneStringWhenPassOneNumber() {
        let expectedString: String = "1"
        let receivedString = FizzBuzz().getString(for: 1)
        XCTAssertEqual(receivedString, expectedString)
    }
}
