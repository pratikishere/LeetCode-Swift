//
//  String+Extension.swift
//  LeetCode-Swift
//
//  Created by Pratik Patel on 24/01/21.
//

import Foundation

public extension String {
    var alphanumeric: String {
        return self.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()
    }
}
