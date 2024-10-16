import Testing

@testable import LeetCodeSolutions

@Suite("Add Two Numbers Tests") struct P0002AddTwoNumbersTests {

    var l1: ListNode? = nil
    var l2: ListNode? = nil
    var expected: ListNode? = nil

    var result: ListNode? = nil
    let solution = Solution()

    @Test("Test Case 01") mutating func testCase01() async throws {
        l1 = createLinkedList(from: [2, 4, 3])
        l2 = createLinkedList(from: [5, 6, 4])
        expected = createLinkedList(from: [7, 0, 8])

        result = solution.addTwoNumbers(l1, l2)
        #expect(result == expected)
    }

    @Test("Test Case 02") mutating func testCase02() async throws {
        l1 = createLinkedList(from: [0])
        l2 = createLinkedList(from: [0])
        expected = createLinkedList(from: [0])

        result = solution.addTwoNumbers(l1, l2)
        #expect(result == expected)
    }

    @Test("Test Case 03") mutating func testCase03() async throws {
        l1 = createLinkedList(from: [9, 9, 9, 9, 9, 9, 9])
        l2 = createLinkedList(from: [9, 9, 9, 9])
        expected = createLinkedList(from: [8, 9, 9, 9, 0, 0, 0, 1])

        result = solution.addTwoNumbers(l1, l2)
        #expect(result == expected)
    }
}
