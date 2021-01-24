//
//  Solution.swift
//  LeetCode-Swift
//
//  Created by Pratik Patel on 24/01/21.
//

import Foundation

public struct Solution {

    public init() {}

    public func getFirstUniqueCharacterIndex(from givenString: String) -> Int {
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

    public func isPalindromeString(for givenString: String) -> Bool {

        if givenString.isEmpty { return true }

        return false
    }
}