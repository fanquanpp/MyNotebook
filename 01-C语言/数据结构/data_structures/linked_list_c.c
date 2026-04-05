/*
 * @Author:      Anonymous
 * @Algorithm:   单链表 (Single Linked List)
 * @Language:    C (C99)
 * @Time Compl.: 插入 O(1), 删除 O(n), 查找 O(n)
 * @Description: 包含手动内存管理（malloc/free）。 | Manual memory management implementation of Single Linked List.
 * @Teaching:    理解指针与结构体。 | Understanding pointers and structs.
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

struct Node {
    int data;
    struct Node* next;
};

// 创建新节点 | Create a new node
struct Node* newNode(int data) {
    struct Node* temp = (struct Node*)malloc(sizeof(struct Node));
    temp->data = data;
    temp->next = NULL;
    return temp;
}

// 在末尾添加节点 | Append node at the end
void append(struct Node** head_ref, int data) {
    struct Node* new_node = newNode(data);
    struct Node* last = *head_ref;
    
    if (*head_ref == NULL) {
        *head_ref = new_node;
        return;
    }
    
    while (last->next != NULL) {
        last = last->next;
    }
    last->next = new_node;
}

// 释放链表内存 | Free the list memory
void freeList(struct Node* head) {
    struct Node* temp;
    while (head != NULL) {
        temp = head;
        head = head->next;
        free(temp);
    }
}

// 单元测试 | Unit Test
void testLinkedList() {
    struct Node* head = NULL;
    append(&head, 1);
    append(&head, 2);
    append(&head, 3);
    
    assert(head->data == 1);
    assert(head->next->data == 2);
    assert(head->next->next->data == 3);
    assert(head->next->next->next == NULL);
    
    freeList(head);
    printf("Linked List (C) tests passed! | 链表 (C) 测试通过！\n");
}

int main() {
    testLinkedList();
    return 0;
}

// LeetCode: 206. Reverse Linked List
