//
//  Palindrome.swift
//  LeetCode-Swift
//
//  Created by Apple on 14/04/21.
//

import Foundation

public struct Palindrome {
    
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
