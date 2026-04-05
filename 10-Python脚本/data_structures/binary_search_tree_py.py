/*
 * @Author:      Anonymous
 * @Algorithm:   二叉搜索树 (Binary Search Tree / BST)
 * @Language:    Python 3.12
 * @Time Compl.: O(log n) 平均 / O(n) 最坏 | O(log n) average / O(n) worst
 * @Description: 一种二叉树，左子树节点值均小于根节点，右子树节点值均大于根节点。 | A binary tree where left child < root < right child.
 * @Teaching:    BST 的中序遍历结果是有序序列。最坏情况会退化为链表（需 AVL 或红黑树优化）。 | In-order traversal of a BST is sorted. Can degenerate into a linked list (needs AVL or Red-Black optimization).
 */

class Node:
    def __init__(self, key):
        self.val = key
        self.left = None
        self.right = None

class BST:
    def __init__(self):
        self.root = None

    def insert(self, key):
        """插入节点 | Insert a node"""
        if self.root is None:
            self.root = Node(key)
        else:
            self._insert(self.root, key)

    def _insert(self, node, key):
        if key < node.val:
            if node.left is None:
                node.left = Node(key)
            else:
                self._insert(node.left, key)
        else:
            if node.right is None:
                node.right = Node(key)
            else:
                self._insert(node.right, key)

    def search(self, key):
        """搜索节点 | Search for a node"""
        return self._search(self.root, key)

    def _search(self, node, key):
        if node is None or node.val == key:
            return node
        if key < node.val:
            return self._search(node.left, key)
        return self._search(node.right, key)

    def inorder(self):
        """中序遍历 | In-order traversal"""
        res = []
        self._inorder(self.root, res)
        return res

    def _inorder(self, node, res):
        if node:
            self._inorder(node.left, res)
            res.append(node.val)
            self._inorder(node.right, res)

# 单元测试 | Unit Test
def test_bst():
    bst = BST()
    bst.insert(50)
    bst.insert(30)
    bst.insert(20)
    bst.insert(40)
    bst.insert(70)
    bst.insert(60)
    bst.insert(80)
    
    assert bst.inorder() == [20, 30, 40, 50, 60, 70, 80]
    assert bst.search(40) is not None
    assert bst.search(100) is None
    print("BST tests passed! | 二叉搜索树测试通过！")

if __name__ == "__main__":
    test_bst()

# LeetCode: 700. Search in a Binary Search Tree, 701. Insert into a Binary Search Tree
