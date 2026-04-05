/*
 * @Author:      Anonymous
 * @Algorithm:   链表 (Linked List)
 * @Language:    Python 3.12
 * @Description: 包含单链表与双向链表的实现，支持插入、删除、反转等核心操作。 | Implementation of Single and Doubly Linked Lists with core operations like insertion, deletion, and reversal.
 * @Teaching:    掌握指针（引用）的指向变换是理解链表的关键。注意边界条件（如头尾节点）。 | Mastering pointer (reference) manipulation is key. Pay attention to edge cases like head and tail nodes.
 */

class Node:
    """单链表节点 | Single Linked List Node"""
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    """单链表 | Single Linked List"""
    def __init__(self):
        self.head = None

    def append(self, data):
        """在末尾添加节点 | Append node at the end"""
        new_node = Node(data)
        if not self.head:
            self.head = new_node
            return
        last = self.head
        while last.next:
            last = last.next
        last.next = new_node

    def delete(self, key):
        """删除指定值的节点 | Delete node by value"""
        curr = self.head
        if curr and curr.data == key:
            self.head = curr.next
            curr = None
            return
        prev = None
        while curr and curr.data != key:
            prev = curr
            curr = curr.next
        if not curr:
            return
        prev.next = curr.next
        curr = None

    def reverse(self):
        """反转链表 | Reverse the linked list"""
        prev = None
        curr = self.head
        while curr:
            next_node = curr.next
            curr.next = prev
            prev = curr
            curr = next_node
        self.head = prev

    def to_list(self):
        """转换为 Python 列表以进行测试 | Convert to Python list for testing"""
        result = []
        curr = self.head
        while curr:
            result.append(curr.data)
            curr = curr.next
        return result

# --- 双向链表 | Doubly Linked List ---

class DNode:
    """双向链表节点 | Doubly Linked List Node"""
    def __init__(self, data):
        self.data = data
        self.next = None
        self.prev = None

class DoublyLinkedList:
    """双向链表 | Doubly Linked List"""
    def __init__(self):
        self.head = None

    def append(self, data):
        new_node = DNode(data)
        if not self.head:
            self.head = new_node
            return
        curr = self.head
        while curr.next:
            curr = curr.next
        curr.next = new_node
        new_node.prev = curr

    def to_list(self):
        result = []
        curr = self.head
        while curr:
            result.append(curr.data)
            curr = curr.next
        return result

# 单元测试 | Unit Tests
def test_linked_list():
    ll = LinkedList()
    ll.append(1)
    ll.append(2)
    ll.append(3)
    assert ll.to_list() == [1, 2, 3]
    
    ll.delete(2)
    assert ll.to_list() == [1, 3]
    
    ll.reverse()
    assert ll.to_list() == [3, 1]
    
    dll = DoublyLinkedList()
    dll.append(10)
    dll.append(20)
    assert dll.to_list() == [10, 20]
    assert dll.head.next.prev.data == 10
    
    print("Linked List tests passed! | 链表测试通过！")

if __name__ == "__main__":
    test_linked_list()

# LeetCode: 206. Reverse Linked List, 141. Linked List Cycle
