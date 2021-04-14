//
//  FirstUniqueCharacterInString.swift
//  LeetCode-Swift
//
//  Created by Apple on 14/04/21.
//

import Foundation

public struct FirstUniqueCharacterInString {
    
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
}


