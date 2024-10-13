// Base class to group all the solutions
class Solution {}

// Definition for singly-linked list
public class ListNode: Equatable {
    public var val: Int
    public var next: ListNode?

    public init() {
        self.val = 0
        self.next = nil
    }

    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }

    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }

    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.val == rhs.val && lhs.next == rhs.next
    }
}

// Helper function to create a linked list from an array
func createLinkedList(from array: [Int]) -> ListNode? {
    var head: ListNode?
    var current: ListNode?

    for num in array {
        let node = ListNode(num)
        if head == nil {
            head = node
            current = node
        } else {
            current?.next = node
            current = node
        }
    }

    return head
}
