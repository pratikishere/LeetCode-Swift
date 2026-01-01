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
        
        var seen: [Int: Int] = [:]
                
        for (i, num) in nums.enumerated() {
            let complement = target - num
            
            if let j = seen[complement] {
                return [j, i]
            }
            
            seen[num] = i
        }
        
        return []
    }
}
