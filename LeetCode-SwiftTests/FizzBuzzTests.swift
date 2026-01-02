//
//  FizzBuzzTests.swift
//  LeetCode-SwiftTests
//
//  Created by Pratik Patel on 23/01/21.
//

import XCTest
import LeetCode_Swift

class FizzBuzzTests: XCTestCase {

    func test_getString_shouldReturnNumberStringWhenTwoNumbersPassed() {
        let expectedStrings: [String] = ["1", "2"]

        let receivedStrings = makeSUT().fizzBuzz(2)

        XCTAssertEqual(receivedStrings, expectedStrings)
    }

    func test_getString_shouldReturnFizzForMultipliesOfThree() {
        let expectedStrings: [String] = ["1", "2", "Fizz"]

        let receivedStrings = makeSUT().fizzBuzz(3)

        XCTAssertEqual(expectedStrings, receivedStrings)
    }

    func test_getString_shouldReturnBuzzForMultipliesOfFive() {
        let expectedStrings: [String] = ["1", "2", "Fizz", "4", "Buzz"]

        let receivedStrings = makeSUT().fizzBuzz(5)

        XCTAssertEqual(expectedStrings, receivedStrings)
    }

    func test_getString_shouldReturnFizzBuzzForMultipliesOfThreeAndFive() {
        let expectedStrings: [String] = ["1",
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
                                         "FizzBuzz"]

        let receivedStrings = makeSUT().fizzBuzz(15)

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
