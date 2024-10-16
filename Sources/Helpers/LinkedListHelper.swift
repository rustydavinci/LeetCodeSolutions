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
