//
//  FizzBuzz.swift
//  LeetCode-Swift
//
//  Created by Apple on 14/04/21.
//

import Foundation

public struct FizzBuzz {
    
    public init() {}
    
    public func getString(for number: Int) -> String {

        if number % 3 == 0 && number % 5 == 0 {
            return "FizzBuzz"
        } else if number % 3 == 0 {
            return "Fizz"
        } else if number % 5 == 0 {
            return "Buzz"
        }

        return "\(number)"
    }

    public func getReceivedStrings(for numbers: [Int]) -> [String] {
        var receivedStrings: [String] = []

        numbers.forEach { (number) in
            receivedStrings.append(getString(for: number))
        }

        return receivedStrings
    }

    public func getReceivedStrings(till number: Int) -> [String] {
        var receivedStrings: [String] = []

        for i in 1...number {
            receivedStrings.append(getString(for: i))
        }

        return receivedStrings
    }
}
