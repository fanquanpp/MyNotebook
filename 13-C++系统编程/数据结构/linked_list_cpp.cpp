// Linked List implementation in C++

#include <iostream>
#include <memory>

/**
 * Node class for singly linked list
 */
template <typename T>
class Node {
public:
    T data;
    std::unique_ptr<Node<T>> next;

    Node(T value) : data(value), next(nullptr) {}
};

/**
 * Singly Linked List implementation
 */
template <typename T>
class LinkedList {
private:
    std::unique_ptr<Node<T>> head;
    size_t size;

public:
    LinkedList() : head(nullptr), size(0) {}

    // Destructor
    ~LinkedList() {
        // std::unique_ptr automatically cleans up
    }

    /**
     * Add element to the end of the list
     */
    void push_back(T value) {
        if (!head) {
            head = std::make_unique<Node<T>>(value);
        } else {
            Node<T>* current = head.get();
            while (current->next) {
                current = current->next.get();
            }
            current->next = std::make_unique<Node<T>>(value);
        }
        size++;
    }

    /**
     * Add element to the beginning of the list
     */
    void push_front(T value) {
        auto new_node = std::make_unique<Node<T>>(value);
        new_node->next = std::move(head);
        head = std::move(new_node);
        size++;
    }

    /**
     * Remove element from the end of the list
     */
    void pop_back() {
        if (!head) {
            std::cout << "List is empty!" << std::endl;
            return;
        }

        if (!head->next) {
            head.reset();
        } else {
            Node<T>* current = head.get();
            while (current->next->next) {
                current = current->next.get();
            }
            current->next.reset();
        }
        size--;
    }

    /**
     * Remove element from the beginning of the list
     */
    void pop_front() {
        if (!head) {
            std::cout << "List is empty!" << std::endl;
            return;
        }

        head = std::move(head->next);
        size--;
    }

    /**
     * Insert element at specified position
     */
    void insert(size_t position, T value) {
        if (position > size) {
            std::cout << "Position out of bounds!" << std::endl;
            return;
        }

        if (position == 0) {
            push_front(value);
            return;
        }

        Node<T>* current = head.get();
        for (size_t i = 0; i < position - 1; i++) {
            current = current->next.get();
        }

        auto new_node = std::make_unique<Node<T>>(value);
        new_node->next = std::move(current->next);
        current->next = std::move(new_node);
        size++;
    }

    /**
     * Remove element at specified position
     */
    void remove(size_t position) {
        if (position >= size) {
            std::cout << "Position out of bounds!" << std::endl;
            return;
        }

        if (position == 0) {
            pop_front();
            return;
        }

        Node<T>* current = head.get();
        for (size_t i = 0; i < position - 1; i++) {
            current = current->next.get();
        }

        current->next = std::move(current->next->next);
        size--;
    }

    /**
     * Get element at specified position
     */
    T get(size_t position) const {
        if (position >= size) {
            std::cerr << "Position out of bounds!" << std::endl;
            throw std::out_of_range("Position out of bounds");
        }

        Node<T>* current = head.get();
        for (size_t i = 0; i < position; i++) {
            current = current->next.get();
        }

        return current->data;
    }

    /**
     * Check if list contains value
     */
    bool contains(T value) const {
        Node<T>* current = head.get();
        while (current) {
            if (current->data == value) {
                return true;
            }
            current = current->next.get();
        }
        return false;
    }

    /**
     * Get the size of the list
     */
    size_t get_size() const {
        return size;
    }

    /**
     * Check if list is empty
     */
    bool is_empty() const {
        return size == 0;
    }

    /**
     * Clear the list
     */
    void clear() {
        head.reset();
        size = 0;
    }

    /**
     * Reverse the list
     */
    void reverse() {
        if (!head || !head->next) {
            return;
        }

        std::unique_ptr<Node<T>> prev = nullptr;
        Node<T>* current = head.get();
        std::unique_ptr<Node<T>> next = std::move(current->next);

        while (next) {
            current->next = std::move(prev);
            prev = std::unique_ptr<Node<T>>(current);
            current = next.get();
            next = std::move(current->next);
        }

        current->next = std::move(prev);
        head = std::unique_ptr<Node<T>>(current);
    }

    /**
     * Print the list
     */
    void print() const {
        Node<T>* current = head.get();
        while (current) {
            std::cout << current->data << " ";
            current = current->next.get();
        }
        std::cout << std::endl;
    }
};

/**
 * Doubly Node class for doubly linked list
 */
template <typename T>
class DoublyNode {
public:
    T data;
    std::unique_ptr<DoublyNode<T>> next;
    DoublyNode<T>* prev;

    DoublyNode(T value) : data(value), next(nullptr), prev(nullptr) {}
};

/**
 * Doubly Linked List implementation
 */
template <typename T>
class DoublyLinkedList {
private:
    std::unique_ptr<DoublyNode<T>> head;
    DoublyNode<T>* tail;
    size_t size;

public:
    DoublyLinkedList() : head(nullptr), tail(nullptr), size(0) {}

    // Destructor
    ~DoublyLinkedList() {
        // std::unique_ptr automatically cleans up
    }

    /**
     * Add element to the end of the list
     */
    void push_back(T value) {
        auto new_node = std::make_unique<DoublyNode<T>>(value);

        if (!head) {
            head = std::move(new_node);
            tail = head.get();
        } else {
            tail->next = std::move(new_node);
            tail->next->prev = tail;
            tail = tail->next.get();
        }
        size++;
    }

    /**
     * Add element to the beginning of the list
     */
    void push_front(T value) {
        auto new_node = std::make_unique<DoublyNode<T>>(value);

        if (!head) {
            head = std::move(new_node);
            tail = head.get();
        } else {
            new_node->next = std::move(head);
            head->prev = new_node.get();
            head = std::move(new_node);
        }
        size++;
    }

    /**
     * Remove element from the end of the list
     */
    void pop_back() {
        if (!head) {
            std::cout << "List is empty!" << std::endl;
            return;
        }

        if (!head->next) {
            head.reset();
            tail = nullptr;
        } else {
            DoublyNode<T>* new_tail = tail->prev;
            new_tail->next.reset();
            tail = new_tail;
        }
        size--;
    }

    /**
     * Remove element from the beginning of the list
     */
    void pop_front() {
        if (!head) {
            std::cout << "List is empty!" << std::endl;
            return;
        }

        if (!head->next) {
            head.reset();
            tail = nullptr;
        } else {
            head = std::move(head->next);
            head->prev = nullptr;
        }
        size--;
    }

    /**
     * Print the list forward
     */
    void print_forward() const {
        DoublyNode<T>* current = head.get();
        while (current) {
            std::cout << current->data << " ";
            current = current->next.get();
        }
        std::cout << std::endl;
    }

    /**
     * Print the list backward
     */
    void print_backward() const {
        DoublyNode<T>* current = tail;
        while (current) {
            std::cout << current->data << " ";
            current = current->prev;
        }
        std::cout << std::endl;
    }

    /**
     * Get the size of the list
     */
    size_t get_size() const {
        return size;
    }

    /**
     * Check if list is empty
     */
    bool is_empty() const {
        return size == 0;
    }
};

// Usage example
int main() {
    // Test Singly Linked List
    std::cout << "Testing Singly Linked List:" << std::endl;
    LinkedList<int> list;

    list.push_back(1);
    list.push_back(2);
    list.push_back(3);
    list.push_front(0);

    std::cout << "List after push operations: ";
    list.print();

    list.pop_back();
    std::cout << "List after pop_back: ";
    list.print();

    list.pop_front();
    std::cout << "List after pop_front: ";
    list.print();

    list.insert(1, 5);
    std::cout << "List after insert at position 1: ";
    list.print();

    list.remove(1);
    std::cout << "List after remove at position 1: ";
    list.print();

    std::cout << "Element at position 1: " << list.get(1) << std::endl;
    std::cout << "List contains 2: " << (list.contains(2) ? "Yes" : "No") << std::endl;
    std::cout << "List size: " << list.get_size() << std::endl;

    list.reverse();
    std::cout << "List after reverse: ";
    list.print();

    list.clear();
    std::cout << "List after clear - is empty: " << (list.is_empty() ? "Yes" : "No") << std::endl;

    // Test Doubly Linked List
    std::cout << "\nTesting Doubly Linked List:" << std::endl;
    DoublyLinkedList<int> dlist;

    dlist.push_back(10);
    dlist.push_back(20);
    dlist.push_back(30);
    dlist.push_front(0);

    std::cout << "List forward: ";
    dlist.print_forward();

    std::cout << "List backward: ";
    dlist.print_backward();

    dlist.pop_back();
    std::cout << "After pop_back - forward: ";
    dlist.print_forward();

    dlist.pop_front();
    std::cout << "After pop_front - forward: ";
    dlist.print_forward();

    std::cout << "Doubly list size: " << dlist.get_size() << std::endl;

    return 0;
}