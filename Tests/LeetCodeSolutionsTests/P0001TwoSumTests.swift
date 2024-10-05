//
//  P0001TwoSumTests.swift
//  LeetCodeSolutions
//
//  Created by David Ossa on 05/10/2024.
//

import Testing

@testable import LeetCodeSolutions

@Suite("Two Sum Tests") struct P0001TwoSumTests {

    @Test("Test Case 01") func testCase01() async throws {
        let nums = [2, 7, 11, 15]
        let target = 9
        let expected = [0, 1]

        let result = Solution().twoSum(nums, target)
        #expect(result.sorted() == expected.sorted())
    }

    @Test("Test Case 02") func testCase02() async throws {
        let nums = [3, 2, 4]
        let target = 6
        let expected = [1, 2]

        let result = Solution().twoSum(nums, target)
        #expect(result.sorted() == expected.sorted())
    }

    @Test("Test Case 03") func testCase03() async throws {
        let nums = [3, 3]
        let target = 6
        let expected = [0, 1]

        let result = Solution().twoSum(nums, target)
        #expect(result.sorted() == expected.sorted())
    }
}
