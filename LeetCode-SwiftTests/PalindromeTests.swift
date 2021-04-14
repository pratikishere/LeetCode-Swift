//
//  PalindromeTests.swift
//  LeetCode-SwiftTests
//
//  Created by Apple on 14/04/21.
//

import XCTest
import LeetCode_Swift

class PalindromeTests: XCTestCase {

    func test_isPalindromeString_shouldReturnTrueForEmptyString() {
        let expectedValue = true

        let receivedValue = Palindrome().isPalindromeString(for: "")

        XCTAssertEqual(expectedValue, receivedValue)
    }

    func test_isPalindromeString_shouldReturnTrueForAlphanumericString() {
        let expectedValue = true

        let receivedValue = Palindrome().isPalindromeString(for: "A man, a plan, a canal: Panama".alphanumeric)

        XCTAssertEqual(expectedValue, receivedValue)
    }

    func test_isPalindromeString_shouldReturnFalseForInvalidString() {
        let expectedValue = false

        let receivedValue = Palindrome().isPalindromeString(for: "abcb".alphanumeric)

        XCTAssertEqual(expectedValue, receivedValue)
    }
}
