/*
 * @Author:      Anonymous
 * @Algorithm:   队列 (Queue)
 * @Language:    C11
 * @Description: 使用数组实现的循环队列。遵循先进先出 (FIFO)。 | Array-based Circular Queue implementation. Follows FIFO principle.
 * @Teaching:    循环队列的取模运算实现。 | Modulo arithmetic for circular queue implementation.
 */

#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

#define MAX_SIZE 5

/**
 * @brief 队列结构体定义
 */
typedef struct {
    int data[MAX_SIZE];
    int front;
    int rear;
} Queue;

/**
 * @brief 初始化队列
 */
void initQueue(Queue *q) {
    q->front = 0;
    q->rear = 0;
}

/**
 * @brief 检查队列是否为空
 */
bool isEmpty(Queue *q) {
    return q->front == q->rear;
}

/**
 * @brief 检查队列是否已满
 */
bool isFull(Queue *q) {
    return (q->rear + 1) % MAX_SIZE == q->front;
}

/**
 * @brief 入队操作
 */
bool enqueue(Queue *q, int val) {
    if (isFull(q)) return false;
    q->data[q->rear] = val;
    q->rear = (q->rear + 1) % MAX_SIZE;
    return true;
}

/**
 * @brief 出队操作
 */
bool dequeue(Queue *q, int *val) {
    if (isEmpty(q)) return false;
    *val = q->data[q->front];
    q->front = (q->front + 1) % MAX_SIZE;
    return true;
}

/**
 * @brief 单元测试 | Unit Test
 */
void test_queue() {
    Queue q;
    initQueue(&q);
    
    enqueue(&q, 1);
    enqueue(&q, 2);
    enqueue(&q, 3);
    
    int val;
    dequeue(&q, &val);
    assert(val == 1);
    dequeue(&q, &val);
    assert(val == 2);
    
    enqueue(&q, 4);
    enqueue(&q, 5);
    // 队列已满 | Queue Full
    assert(enqueue(&q, 6) == false);
    
    printf("Queue (C) tests passed! | 队列 (C) 测试通过！\n");
}

int main() {
    test_queue();
    return 0;
}
