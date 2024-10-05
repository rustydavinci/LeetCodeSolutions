//
//  P0001TwoSum.swift
//  LeetCodeSolutions
//
//  Created by David Ossa on 05/10/2024.
//

extension Solution {

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // Dictionary to store numbers and their indices
        var numberToIndexMap = [Int: Int]()

        // Iterate through nums array
        for (currentIndex, currentNumber) in nums.enumerated() {
            // Calculate the complement needed to reach target
            let requiredNumber = target - currentNumber

            // If found in map, return the pair of indices
            if let requiredIndex = numberToIndexMap[requiredNumber] {
                return [requiredIndex, currentIndex]
            }

            // Otherwise, store the current number with its index
            numberToIndexMap[currentNumber] = currentIndex
        }

        // Return empty array if no solution
        return []
    }
}
