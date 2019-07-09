
// LinkedList
public class Node<T> {
    var value: T
    var next: Node?
    
    init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    fileprivate var head: Node<T>?
    private var tail: Node<T>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node<T>? {
        return head
    }
    
    public var last: Node<T>? {
        return tail
    }
    
    public func traverse() {
        var current_node = head
        print("\nTraversal BEGIN======")
        while current_node?.next != nil {
            current_node = current_node?.next
            print("Traversed value: \(current_node?.value)")
        }
        print("Traversal END======")
    }
    
    public func append(_ value: T) {
        var current_node = head
        var new_node: Node<T>?
        
        // Travering loop to reach the tail
        while (current_node != nil && current_node?.next != nil) {
            current_node = current_node?.next
        }
        
        new_node = Node<T>(value: value)
        
        if current_node != nil {
            current_node?.next = new_node
        }else {
            head = new_node
        }
    }
}

var node = LinkedList<Int>()

for i in 0...3 {
    node.append(i)
}

node.traverse()

node.append(69)

node.traverse()
