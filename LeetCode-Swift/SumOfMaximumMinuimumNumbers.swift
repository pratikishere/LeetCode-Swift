//
//  SumOfMaximumMinuimumNumbers.swift
//  LeetCode-Swift
//
//  Created by Apple on 14/04/21.
//

import Foundation

public enum SumOfMaximumMinuimumNumbersError: Error {
    case emptyError
}

public struct SumOfMaximumMinuimumNumbers {
    
    public init() {}
    
    public func sum(for array: [Int]) throws -> Int {
        if array.count == 0 {
            throw SumOfMaximumMinuimumNumbersError.emptyError
        }
        
        if array.count == 1 {
            return array[0]
        }
        
        var i = 0
        
        var maxNumber = array[0], minNumber = array[0]
        
        while i < array.count {
            
            if array[i] > maxNumber {
                maxNumber = array[i]
            }
            
            if array[i] < minNumber {
                minNumber = array[i]
            }
            
            i += 1
        }
        
        return (maxNumber + minNumber)
    }
}
