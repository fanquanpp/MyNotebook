/*
 * @Author:      Anonymous
 * @Algorithm:   单链表 (Single Linked List)
 * @Language:    C (C99)
 * @Time Compl.: 插入 O(1), 删除 O(n), 查找 O(n)
 * @Space Compl.: O(n) - 每个节点需要额外的指针空间
 * @Description: 包含手动内存管理（malloc/free）。 | Manual memory management implementation of Single Linked List.
 * @Teaching:    理解指针与结构体。 | Understanding pointers and structs.
 * @Applications: 适用于频繁插入删除操作的场景，如队列、栈的底层实现。 | Suitable for scenarios with frequent insertions and deletions, such as queue and stack implementations.
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdbool.h>

/**
 * @brief 链表节点结构体
 */
struct Node {
    int data;           // 节点数据
    struct Node* next;  // 指向下一个节点的指针
};

/**
 * @brief 创建新节点
 * @param data 节点数据
 * @return 新创建的节点指针
 */
struct Node* newNode(int data) {
    // 分配内存空间
    struct Node* temp = (struct Node*)malloc(sizeof(struct Node));
    
    // 检查内存分配是否成功
    if (temp == NULL) {
        fprintf(stderr, "Memory allocation failed!\n");
        exit(EXIT_FAILURE);
    }
    
    // 初始化节点
    temp->data = data;
    temp->next = NULL;
    
    return temp;
}

/**
 * @brief 在链表末尾添加节点
 * @param head_ref 头节点指针的指针
 * @param data 要添加的数据
 */
void append(struct Node** head_ref, int data) {
    // 创建新节点
    struct Node* new_node = newNode(data);
    
    // 如果链表为空，新节点就是头节点
    if (*head_ref == NULL) {
        *head_ref = new_node;
        return;
    }
    
    // 找到链表的最后一个节点
    struct Node* last = *head_ref;
    while (last->next != NULL) {
        last = last->next;
    }
    
    // 将新节点添加到链表末尾
    last->next = new_node;
}

/**
 * @brief 在链表头部插入节点
 * @param head_ref 头节点指针的指针
 * @param data 要插入的数据
 */
void push(struct Node** head_ref, int data) {
    // 创建新节点
    struct Node* new_node = newNode(data);
    
    // 新节点指向原头节点
    new_node->next = *head_ref;
    
    // 更新头节点为新节点
    *head_ref = new_node;
}

/**
 * @brief 删除指定值的节点
 * @param head_ref 头节点指针的指针
 * @param key 要删除的值
 * @return 是否删除成功
 */
bool deleteNode(struct Node** head_ref, int key) {
    // 保存头节点
    struct Node* temp = *head_ref;
    struct Node* prev = NULL;
    
    // 如果头节点就是要删除的节点
    if (temp != NULL && temp->data == key) {
        *head_ref = temp->next;  // 更新头节点
        free(temp);              // 释放内存
        return true;
    }
    
    // 查找要删除的节点
    while (temp != NULL && temp->data != key) {
        prev = temp;
        temp = temp->next;
    }
    
    // 如果没有找到要删除的节点
    if (temp == NULL) {
        return false;
    }
    
    // 从链表中移除节点
    prev->next = temp->next;
    
    // 释放内存
    free(temp);
    return true;
}

/**
 * @brief 打印链表
 * @param head 头节点
 */
void printList(struct Node* head) {
    struct Node* current = head;
    
    printf("Linked List: ");
    while (current != NULL) {
        printf("%d -> ", current->data);
        current = current->next;
    }
    printf("NULL\n");
}

/**
 * @brief 释放链表内存
 * @param head 头节点
 */
void freeList(struct Node* head) {
    struct Node* temp;
    
    while (head != NULL) {
        temp = head;
        head = head->next;
        free(temp);  // 释放当前节点
    }
}

/**
 * @brief 单元测试 | Unit Test
 */
void testLinkedList() {
    struct Node* head = NULL;
    
    // 测试添加节点
    append(&head, 1);
    append(&head, 2);
    append(&head, 3);
    
    printf("测试添加节点后: ");
    printList(head);
    
    // 测试断言
    assert(head->data == 1);
    assert(head->next->data == 2);
    assert(head->next->next->data == 3);
    assert(head->next->next->next == NULL);
    
    // 测试头部插入
    push(&head, 0);
    printf("测试头部插入后: ");
    printList(head);
    assert(head->data == 0);
    
    // 测试删除节点
    deleteNode(&head, 2);
    printf("测试删除节点后: ");
    printList(head);
    assert(head->next->data == 1);
    assert(head->next->next->data == 3);
    
    // 释放内存
    freeList(head);
    printf("Linked List (C) tests passed! | 链表 (C) 测试通过！\n");
}

int main() {
    testLinkedList();
    return 0;
}

/*
 * 链表的优缺点：
 * 
 * 优点：
 * 1. 插入和删除操作效率高，不需要移动其他元素
 * 2. 动态分配内存，不需要预先知道链表长度
 * 3. 可以灵活地增长和收缩
 * 
 * 缺点：
 * 1. 访问元素需要遍历，时间复杂度为 O(n)
 * 2. 需要额外的空间存储指针
 * 3. 不支持随机访问
 * 4. 需要手动管理内存，容易出现内存泄漏
 */

// LeetCode: 206. Reverse Linked List
