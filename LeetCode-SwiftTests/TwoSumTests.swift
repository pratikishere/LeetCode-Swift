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
    
    // MARK: - Helpers
    
    private func makeSUT() -> TwoSum {
        return TwoSum()
    }
}
