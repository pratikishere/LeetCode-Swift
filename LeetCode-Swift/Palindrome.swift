//
//  Palindrome.swift
//  LeetCode-Swift
//
//  Created by Pratik Patel on 14/04/21.
//

import Foundation

public struct Palindrome {
    
    public init() {}
    
    public func isPalindromeString(for s: String) -> Bool {

        if s.isEmpty { return true }
        let sChars = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
        var i = 0, j = sChars.count - 1

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
