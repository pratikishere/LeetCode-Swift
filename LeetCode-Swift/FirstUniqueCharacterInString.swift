//
//  FirstUniqueCharacterInString.swift
//  LeetCode-Swift
//
//  Created by Pratik Patel on 14/04/21.
//

import Foundation

public struct FirstUniqueCharacterInString {
    
    public init() {}
    
    public func getFirstUniqueCharacterIndex(from s: String) -> Int {
        var dic = [Character: Bool]()

        for char in s {
            if let _ = dic[char] {
                dic[char] = true
            } else {
                dic[char] = false
            }
        }

        for (i, char) in s.enumerated() {
            if dic[char] == false {
                return i
            }
        }

        return -1
    }
}


