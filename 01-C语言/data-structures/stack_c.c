/*
 * @Author:      Anonymous
 * @Algorithm:   栈 (Stack)
 * @Language:    C11
 * @Description: 使用数组实现的简单栈结构。遵循后进先出 (LIFO)。 | Array-based Stack implementation. Follows LIFO principle.
 * @Teaching:    理解栈顶指针 (top) 及边界检查 (Overflow/Underflow)。 | Understand top pointer and boundary checks.
 */

#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

#define MAX_SIZE 100

/**
 * @brief 栈结构体定义
 */
typedef struct {
    int data[MAX_SIZE];
    int top;
} Stack;

/**
 * @brief 初始化栈
 */
void initStack(Stack *s) {
    s->top = -1;
}

/**
 * @brief 检查栈是否为空
 */
bool isEmpty(Stack *s) {
    return s->top == -1;
}

/**
 * @brief 检查栈是否已满
 */
bool isFull(Stack *s) {
    return s->top == MAX_SIZE - 1;
}

/**
 * @brief 入栈操作
 */
bool push(Stack *s, int val) {
    if (isFull(s)) return false;
    s->data[++(s->top)] = val;
    return true;
}

/**
 * @brief 出栈操作
 */
bool pop(Stack *s, int *val) {
    if (isEmpty(s)) return false;
    *val = s->data[(s->top)--];
    return true;
}

/**
 * @brief 单元测试 | Unit Test
 */
void test_stack() {
    Stack s;
    initStack(&s);
    
    push(&s, 10);
    push(&s, 20);
    push(&s, 30);
    
    int val;
    pop(&s, &val);
    assert(val == 30);
    pop(&s, &val);
    assert(val == 20);
    pop(&s, &val);
    assert(val == 10);
    
    assert(isEmpty(&s));
    printf("Stack (C) tests passed! | 栈 (C) 测试通过！\n");
}

int main() {
    test_stack();
    return 0;
}
