//
//  ValidPalindromeTests.swift
//  LeetCode-SwiftTests
//
//  Created by Pratik Patel on 24/01/21.
//

import XCTest
import LeetCode_Swift

class ValidPalindromeTests: XCTestCase {

    func test_isPalindromeString_shouldReturnTrueForEmptyString() {
        let expectedValue = true

        let receivedValue = Solution().isPalindromeString(for: "")

        XCTAssertEqual(expectedValue, receivedValue)
    }
}
