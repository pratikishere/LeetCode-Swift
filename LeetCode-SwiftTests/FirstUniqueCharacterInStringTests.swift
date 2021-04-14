//
//  FirstUniqueCharacterInStringTests.swift
//  LeetCode-SwiftTests
//
//  Created by Pratik Patel on 24/01/21.
//

import XCTest
import LeetCode_Swift

class FirstUniqueCharacterInStringTests: XCTestCase {

    func test_getIndex_shouldReturnMinusOneForEmptyString() {
        let expectedIndex: Int = -1

        let receivedIndex: Int = FirstUniqueCharacterInString().getFirstUniqueCharacterIndex(from: "")

        XCTAssertEqual(expectedIndex, receivedIndex)
    }

    func test_getIndex_shouldReturnMinusOneIfThereIsNoUniqueCharacter() {
        let expectedIndex: Int = -1

        let receivedIndex: Int = FirstUniqueCharacterInString().getFirstUniqueCharacterIndex(from: "lool")

        XCTAssertEqual(expectedIndex, receivedIndex)
    }

    func test_getIndex_shouldReturnIndexIfThereIsAUniqueCharacter() {
        let expectedIndex: Int = 6

        let receivedIndex: Int = FirstUniqueCharacterInString().getFirstUniqueCharacterIndex(from: "loolppk")

        XCTAssertEqual(expectedIndex, receivedIndex)
    }
}
