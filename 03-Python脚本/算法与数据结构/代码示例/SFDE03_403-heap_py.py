/*
 * @Author:      Anonymous
 * @Algorithm:   最小堆 (Min-Heap)
 * @Language:    Python 3.12
 * @Time Compl.: 插入/删除 O(log n), 获取最小值 O(1) | Insert/Delete O(log n), Get min O(1)
 * @Description: 一种完全二叉树，父节点的值始终小于等于其子节点。常用于优先队列。 | A complete binary tree where parent <= children. Commonly used for priority queues.
 * @Teaching:    堆的实现核心在于“上浮” (Sift Up) 和“下沉” (Sift Down) 操作。 | The core of heap implementation is Sift Up and Sift Down operations.
 */

class MinHeap:
    def __init__(self):
        self.heap = []

    def insert(self, val):
        """插入元素 | Insert element"""
        self.heap.append(val)
        self._sift_up(len(self.heap) - 1)

    def extract_min(self):
        """取出并删除最小值 | Extract and remove the minimum element"""
        if not self.heap:
            return None
        if len(self.heap) == 1:
            return self.heap.pop()
        
        min_val = self.heap[0]
        self.heap[0] = self.heap.pop()
        self._sift_down(0)
        return min_val

    def _sift_up(self, idx):
        parent = (idx - 1) // 2
        if idx > 0 and self.heap[idx] < self.heap[parent]:
            self.heap[idx], self.heap[parent] = self.heap[parent], self.heap[idx]
            self._sift_up(parent)

    def _sift_down(self, idx):
        smallest = idx
        left = 2 * idx + 1
        right = 2 * idx + 2
        
        if left < len(self.heap) and self.heap[left] < self.heap[smallest]:
            smallest = left
        if right < len(self.heap) and self.heap[right] < self.heap[smallest]:
            smallest = right
            
        if smallest != idx:
            self.heap[idx], self.heap[smallest] = self.heap[smallest], self.heap[idx]
            self._sift_down(smallest)

# 单元测试 | Unit Test
def test_heap():
    h = MinHeap()
    h.insert(3)
    h.insert(1)
    h.insert(6)
    h.insert(5)
    h.insert(2)
    h.insert(4)
    
    res = []
    while len(h.heap) > 0:
        res.append(h.extract_min())
    
    assert res == [1, 2, 3, 4, 5, 6]
    print("Min-Heap tests passed! | 最小堆测试通过！")

if __name__ == "__main__":
    test_heap()

# LeetCode: 215. Kth Largest Element in an Array (using heap)
