//
//  FirstUniqueCharacterInStringTests.swift
//  LeetCode-SwiftTests
//
//  Created by Pratik Patel on 24/01/21.
//

import XCTest

struct Solution {
    func getFirstUniqueCharacterIndex(from givenString: String) -> Int {
        var dic = [Character: Bool]()

        for char in givenString {
            if let _ = dic[char] {
                dic[char] = true
            } else {
                dic[char] = false
            }
        }

        for (i, char) in givenString.enumerated() {
            if dic[char] == false {
                return i
            }
        }

        return -1
    }
}

class FirstUniqueCharacterInStringTests: XCTestCase {

    func test_getIndex_shouldReturnMinusOneForEmptyString() {
        let expectedIndex: Int = -1

        let receivedIndex: Int = Solution().getFirstUniqueCharacterIndex(from: "")

        XCTAssertEqual(expectedIndex, receivedIndex)
    }

    func test_getIndex_shouldReturnMinusOneIfThereIsNoUniqueCharacter() {
        let expectedIndex: Int = -1

        let receivedIndex: Int = Solution().getFirstUniqueCharacterIndex(from: "lool")

        XCTAssertEqual(expectedIndex, receivedIndex)
    }

    func test_getIndex_shouldReturnIndexIfThereIsAUniqueCharacter() {
        let expectedIndex: Int = 6

        let receivedIndex: Int = Solution().getFirstUniqueCharacterIndex(from: "loolppk")

        XCTAssertEqual(expectedIndex, receivedIndex)
    }
}
