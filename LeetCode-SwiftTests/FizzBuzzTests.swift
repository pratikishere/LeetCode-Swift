//
//  FizzBuzzTests.swift
//  LeetCode-SwiftTests
//
//  Created by Pratik Patel on 23/01/21.
//

import XCTest

struct FizzBuzz {
    func getString(for number: Int) -> String {

        if number % 3 == 0 {
            return "Fizz"
        }

        return "\(number)"
    }
}

class FizzBuzzTests: XCTestCase {

    func test_getString_shouldReturnNumberStringWhenPassNumber() {
        let expectedString: String = "1"
        let receivedString = getString(for: 1)
        XCTAssertEqual(receivedString, expectedString)
    }

    func test_getString_shouldReturnFizzForMultipliesOfThree() {
        let expectedString: String = "Fizz"
        let receivedString = getString(for: 3)
        XCTAssertEqual(expectedString, receivedString)
    }

    // MARK: Helpers

    private func makeSUT() -> FizzBuzz {
        return FizzBuzz()
    }

    private func getString(for number: Int) -> String {
        return makeSUT().getString(for: number)
    }
}
