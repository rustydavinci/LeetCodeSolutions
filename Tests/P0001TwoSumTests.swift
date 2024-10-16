import Testing

@testable import LeetCodeSolutions

@Suite("Two Sum Tests") struct P0001TwoSumTests {

    var nums = [Int]()
    var target = 0
    var expected = [Int]()

    var result = [Int]()
    let solution = Solution()

    @Test("Test Case 01") mutating func testCase01() async throws {
        nums = [2, 7, 11, 15]
        target = 9
        expected = [0, 1]

        result = solution.twoSum(nums, target)
        #expect(result.sorted() == expected.sorted())
    }

    @Test("Test Case 02") mutating func testCase02() async throws {
        nums = [3, 2, 4]
        target = 6
        expected = [1, 2]

        result = solution.twoSum(nums, target)
        #expect(result.sorted() == expected.sorted())
    }

    @Test("Test Case 03") mutating func testCase03() async throws {
        nums = [3, 3]
        target = 6
        expected = [0, 1]

        result = solution.twoSum(nums, target)
        #expect(result.sorted() == expected.sorted())
    }
}
