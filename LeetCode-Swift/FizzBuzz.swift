//
//  FizzBuzz.swift
//  LeetCode-Swift
//
//  Created by Pratik Patel on 14/04/21.
//

import Foundation

public struct FizzBuzz {
    
    public init() {}
    
    public func fizzBuzz(_ n: Int) -> [String] {
        var receivedStrings: [String] = []

        for i in 1...n {
            receivedStrings.append(getString(for: i))
        }

        return receivedStrings
    }
    
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
}
