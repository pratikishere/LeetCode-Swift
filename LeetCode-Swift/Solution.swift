//
//  Solution.swift
//  LeetCode-Swift
//
//  Created by Pratik Patel on 24/01/21.
//

import Foundation

public struct Solution {

    public init() {}

    public func isPalindromeString(for givenString: String) -> Bool {

        if givenString.isEmpty { return true }

        var i = 0, j = givenString.count - 1

        let sChars = Array(givenString.lowercased())

        while i < j {
            if sChars[i] != sChars[j] {
                return false
            } else {
                i += 1
                j -= 1
            }
        }

        return true
    }
}
