//
//  FirstUniqueCharacterInStringTests.swift
//  LeetCode-SwiftTests
//
//  Created by Pratik Patel on 24/01/21.
//

import XCTest

struct Solution {
    func getIndex(from givenString: String, for character: String.Element) -> Int {
        let index = -1

        for (index, char) in givenString.enumerated() {
            if char == character {
                return index
            }
        }

        return index
    }
}

class FirstUniqueCharacterInStringTests: XCTestCase {

    func test_getIndex_shouldReturnMinusOneIndexForNonMatchingCharacter() {
        let expectedIndex: Int = -1

        let receivedIndex: Int = Solution().getIndex(from: "Hello World", for: "p")

        XCTAssertEqual(expectedIndex, receivedIndex)
    }
}
