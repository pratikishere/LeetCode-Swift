//
//  FizzBuzzTests.swift
//  LeetCode-SwiftTests
//
//  Created by Pratik Patel on 23/01/21.
//

import XCTest
import LeetCode_Swift

class FizzBuzzTests: XCTestCase {

    func test_getString_shouldReturnNumberStringWhenPassNumber() {
        let expectedStrings: [String] = ["1", "2", "7"]

        let receivedStrings = makeSUT().getReceivedStrings(for: [1, 2, 7])

        XCTAssertEqual(receivedStrings, expectedStrings)
    }

    func test_getString_shouldReturnFizzForMultipliesOfThree() {
        let expectedStrings: [String] = ["Fizz", "Fizz", "Fizz"]

        let receivedStrings = makeSUT().getReceivedStrings(for: [3, 66, 999])

        XCTAssertEqual(expectedStrings, receivedStrings)
    }

    func test_getString_shouldReturnBuzzForMultipliesOfFive() {
        let expectedStrings: [String] = ["Buzz", "Buzz", "Buzz"]

        let receivedStrings = makeSUT().getReceivedStrings(for: [5, 10, 1000])

        XCTAssertEqual(expectedStrings, receivedStrings)
    }

    func test_getString_shouldReturnFizzBuzzForMultipliesOfThreeAndFive() {
        let expectedStrings: [String] = ["FizzBuzz", "FizzBuzz", "FizzBuzz"]

        let receivedStrings = makeSUT().getReceivedStrings(for: [15, 135, 75])

        XCTAssertEqual(expectedStrings, receivedStrings)
    }

    func test_getStrings_shouldReturnArrayOfStringsTillTheNumber() {
        let expectedStrings: [String] = [
            "1",
            "2",
            "Fizz",
            "4",
            "Buzz",
            "Fizz",
            "7",
            "8",
            "Fizz",
            "Buzz",
            "11",
            "Fizz",
            "13",
            "14",
            "FizzBuzz"
        ]

        let receivedStrings = makeSUT().getReceivedStrings(till: 15)

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
