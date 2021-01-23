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
        let expectedStrings: [String] = ["1", "2", "7"]

        let receivedStrings = getReceivedStrings(for: [1, 2, 7])

        XCTAssertEqual(receivedStrings, expectedStrings)
    }

    func test_getString_shouldReturnFizzForMultipliesOfThree() {
        let expectedStrings: [String] = ["Fizz", "Fizz", "Fizz"]

        let receivedStrings = getReceivedStrings(for: [3, 66, 999])

        XCTAssertEqual(expectedStrings, receivedStrings)
    }

    func test_getString_shouldReturnBuzzForMultipliesOfFive() {
        let expectedStrings: [String] = ["Buzz", "Buzz", "Buzz"]

        let receivedStrings = getReceivedStrings(for: [5, 10, 1000])

        XCTAssertEqual(expectedStrings, receivedStrings)
    }

    func test_getString_shouldReturnFizzBuzzForMultipliesOfThreeAndFive() {
        let expectedStrings: [String] = ["FizzBuzz", "FizzBuzz", "FizzBuzz"]

        let receivedStrings = getReceivedStrings(for: [15, 135, 75])

        XCTAssertEqual(expectedStrings, receivedStrings)
    }

    // MARK: Helpers

    private func makeSUT() -> FizzBuzz {
        return FizzBuzz()
    }

    private func getString(for number: Int) -> String {
        return makeSUT().getString(for: number)
    }

    private func getReceivedStrings(for numbers: [Int]) -> [String] {
        var receivedStrings: [String] = []

        numbers.forEach { (number) in
            receivedStrings.append(getString(for: number))
        }

        return receivedStrings
    }
}
