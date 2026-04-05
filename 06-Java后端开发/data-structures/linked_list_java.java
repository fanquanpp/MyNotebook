/*
 * @Author:      Anonymous
 * @Algorithm:   单向链表 (Single Linked List)
 * @Language:    Java 17
 * @Description: 在 Java 中通过内部类实现单向链表。 | Single Linked List implementation in Java using nested classes.
 * @Teaching:    理解对象引用作为指针的特性。 | Understand object references as pointers.
 */

public class linked_list_java<T> {

    private class Node {
        T data;
        Node next;

        Node(T data) {
            this.data = data;
            this.next = null;
        }
    }

    private Node head;

    public void append(T data) {
        if (head == null) {
            head = new Node(data);
            return;
        }
        Node current = head;
        while (current.next != null) {
            current = current.next;
        }
        current.next = new Node(data);
    }

    public void printList() {
        Node current = head;
        while (current != null) {
            System.out.print(current.data + " -> ");
            current = current.next;
        }
        System.out.println("null");
    }

    public static void main(String[] args) {
        linked_list_java<Integer> list = new linked_list_java<>();
        list.append(1);
        list.append(2);
        list.append(3);
        list.printList(); // 1 -> 2 -> 3 -> null
    }
}
