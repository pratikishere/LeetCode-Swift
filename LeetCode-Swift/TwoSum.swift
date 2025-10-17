//
//  TwoSum.swift
//  LeetCode-Swift
//
//  Created by Pratik Patel on 16/10/2025.
//

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.isEmpty {
            return []
        }
        else if nums.count == 1 {
            if nums[0] != target {
                return []
            }
            return [0]
        }
        else if nums.count == 2 {
            if nums[0] + nums[1] != target {
                return []
            }
            
            return [0, 1]
        }
        
        var i = 0, j = i + 1
        
        while i < j {
            if nums[i] + nums[j] == target {
                return [i, j]
            } else {
                if j == nums.count - 1 {
                    i += 1
                    j = i + 1
                } else {
                    j += 1
                }
            }
        }
        
        return []
    }
}
