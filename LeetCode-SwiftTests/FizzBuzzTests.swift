//
//  FizzBuzzTests.swift
//  LeetCode-SwiftTests
//
//  Created by Pratik Patel on 23/01/21.
//

import XCTest

struct FizzBuzz {
    func getString(for number: Int) -> String {

        if number % 3 == 0 && number % 5 == 0 {
            return "FizzBuzz"
        } else if number % 3 == 0 {
            return "Fizz"
        } else if number % 5 == 0 {
            return "Buzz"
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
        let expectedStrings: [String] = ["Fizz", "Fizz", "Fizz"]

        var receivedStrings: [String] = []

        [3, 66, 999].forEach { (number) in
            receivedStrings.append(getString(for: number))
        }

        XCTAssertEqual(expectedStrings, receivedStrings)
    }

    func test_getString_shouldReturnBuzzForMultipliesOfFive() {
        let expectedStrings: [String] = ["Buzz", "Buzz", "Buzz"]

        var receivedStrings: [String] = []

        [5, 10, 1000].forEach { (number) in
            receivedStrings.append(getString(for: number))
        }

        XCTAssertEqual(expectedStrings, receivedStrings)
    }

    func test_getString_shouldReturnFizzBuzzForMultipliesOfThreeAndFive() {
        let expectedStrings: [String] = ["FizzBuzz", "FizzBuzz", "FizzBuzz"]

        var receivedStrings: [String] = []

        [15, 135, 75].forEach { (number) in
            receivedStrings.append(getString(for: number))
        }

        XCTAssertEqual(expectedStrings, receivedStrings)
    }

    // MARK: Helpers

    private func makeSUT() -> FizzBuzz {
        return FizzBuzz()
    }

    private func getString(for number: Int) -> String {
        return makeSUT().getString(for: number)
    }
}
