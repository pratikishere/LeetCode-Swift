//
//  SumOfMaxMinNumersTests.swift
//  LeetCode-SwiftTests
//
//  Created by Apple on 14/04/21.
//

import XCTest

enum CustomError: Error {
    case emptyError
}

class SumOfMaximumMinuimumNumbers {
    func sum(for array: [Int]) throws -> Int {
        if array.count == 0 {
            throw CustomError.emptyError
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

class SumOfMaxMinNumersTests: XCTestCase {
    
    func test_shouldThrowErrorIfEmptyArray() {
        
        let givenArray: [Int] = []
        
        let sut = makeSUT()
        
        XCTAssertThrowsError(try sut.sum(for: givenArray))
    }
    
    func test_shouldReturnNumberIfArraySizeIsOne() {
        
        let givenArray: [Int] = [8]
        
        let sut = makeSUT()
        
        XCTAssertEqual(try sut.sum(for: givenArray), 8)
    }
    
    func test_shouldReturnSumOfMaximumAndMinimumNumer() {
        
        let givenArray: [Int] = [3, 4, 2, 5, 2, 8, 14, 15]
        
        let sut = makeSUT()
        
        XCTAssertEqual(try sut.sum(for: givenArray), 17)
    }
    
    // Helpers
    
    func makeSUT() -> SumOfMaximumMinuimumNumbers {
        return SumOfMaximumMinuimumNumbers()
    }
}
