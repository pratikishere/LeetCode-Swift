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

    func test_isPalindromeString_shouldReturnTrueForAlphanumericString() {
        let expectedValue = true

        let receivedValue = Solution().isPalindromeString(for: "A man, a plan, a canal: Panama".alphanumeric)

        XCTAssertEqual(expectedValue, receivedValue)
    }

    func test_isPalindromeString_shouldReturnFalseForInvalidString() {
        let expectedValue = false

        let receivedValue = Solution().isPalindromeString(for: "abcb".alphanumeric)

        XCTAssertEqual(expectedValue, receivedValue)
    }
}
