//
//  TwoSumTests.swift
//  LeetCode-SwiftTests
//
//  Created by Pratik Patel on 16/10/2025.
//

import XCTest
@testable import LeetCode_Swift

final class TwoSumTests: XCTestCase {

    func testReturnEmptyIndicesWhenNoNumbers() {
        let sut = makeSUT()
        let indices = sut.twoSum([], 8)
        XCTAssertTrue(indices.isEmpty, "Indices is not empty")
    }
    
    func testReturnEmptyIndicesWhenTargetIsNotEqualNumber() {
        let sut = makeSUT()
        let indices = sut.twoSum([1], 8)
        XCTAssertTrue(indices.isEmpty, "Target is equal to number")
    }
    
    func testReturnZeroAsIndiceWhenTargetIsMatchedWithNumber() {
        let sut = makeSUT()
        let indices = sut.twoSum([8], 8)
        XCTAssertEqual(indices.first!, 0, "Target is not equal to number hence indices is empty")
    }
    
    func testReturnEmptyIndicesWhenTargetIsNotEqualToSumOfNumbers() {
        let sut = makeSUT()
        let indices = sut.twoSum([1, 2], 8)
        XCTAssertEqual(indices.count, 0, "Target is equal to sum of numbers")
    }
    
    func testReturnIndicesWhenTargetIsEqualToSumOfNumbers() {
        let sut = makeSUT()
        var numbers = [1, 4, 3, 4, 4]
        var indices = sut.twoSum(numbers, 8)
        
        XCTAssertEqual(indices.count, 2, "Target is not equal to sum of numbers")
        XCTAssertEqual(indices[0], 1, "indice is not matching")
        XCTAssertEqual(indices[1], 3, "indice is not matching")
        
        numbers = [1, 4, 1, 4, 8, 7, 2, 3, 9, 3]
        indices = sut.twoSum(numbers, 10)
        XCTAssertEqual(indices.count, 2, "Target is not equal to sum of numbers")
        XCTAssertEqual(indices[0], 4, "indice is not matching")
        XCTAssertEqual(indices[1], 6, "indice is not matching")
        
        numbers = [1, 6, 1, 4, 6, 5, 9]
        indices = sut.twoSum(numbers, 12)
        XCTAssertEqual(indices.count, 2, "Target is not equal to sum of numbers")
        XCTAssertEqual(indices[0], 1, "indice is not matching")
        XCTAssertEqual(indices[1], 4, "indice is not matching")
    }
    
    // MARK: - Helpers
    
    private func makeSUT() -> TwoSum {
        return TwoSum()
    }
}
