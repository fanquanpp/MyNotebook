// 二叉搜索树实现
// 左小右大，支持有序遍历

/**
 * 二叉搜索树节点类
 */
class TreeNode {
    constructor(value) {
        this.value = value; // 节点值
        this.left = null; // 左子节点
        this.right = null; // 右子节点
    }
}

/**
 * 二叉搜索树类
 */
class BinarySearchTree {
    constructor() {
        this.root = null; // 根节点
        this.length = 0; // 树中节点数量
    }

    /**
     * 插入节点
     * @param {*} value - 要插入的节点值
     */
    insert(value) {
        const newNode = new TreeNode(value);
        
        if (!this.root) {
            // 树为空，新节点作为根节点
            this.root = newNode;
        } else {
            // 找到插入位置
            this._insertNode(this.root, newNode);
        }
        
        this.length++;
        return this;
    }

    /**
     * 辅助方法：插入节点
     * @param {TreeNode} node - 当前节点
     * @param {TreeNode} newNode - 新节点
     * @private
     */
    _insertNode(node, newNode) {
        if (newNode.value < node.value) {
            // 新节点值小于当前节点值，插入左子树
            if (!node.left) {
                node.left = newNode;
            } else {
                this._insertNode(node.left, newNode);
            }
        } else {
            // 新节点值大于或等于当前节点值，插入右子树
            if (!node.right) {
                node.right = newNode;
            } else {
                this._insertNode(node.right, newNode);
            }
        }
    }

    /**
     * 查找节点
     * @param {*} value - 要查找的节点值
     * @returns {TreeNode|null} - 找到的节点或 null
     */
    search(value) {
        return this._searchNode(this.root, value);
    }

    /**
     * 辅助方法：查找节点
     * @param {TreeNode} node - 当前节点
     * @param {*} value - 要查找的节点值
     * @returns {TreeNode|null} - 找到的节点或 null
     * @private
     */
    _searchNode(node, value) {
        if (!node) {
            return null;
        }
        
        if (value === node.value) {
            return node;
        } else if (value < node.value) {
            return this._searchNode(node.left, value);
        } else {
            return this._searchNode(node.right, value);
        }
    }

    /**
     * 删除节点
     * @param {*} value - 要删除的节点值
     * @returns {boolean} - 是否删除成功
     */
    remove(value) {
        const result = this._removeNode(this.root, value);
        if (result) {
            this.length--;
            return true;
        }
        return false;
    }

    /**
     * 辅助方法：删除节点
     * @param {TreeNode} node - 当前节点
     * @param {*} value - 要删除的节点值
     * @returns {TreeNode|null} - 删除节点后的子树根节点
     * @private
     */
    _removeNode(node, value) {
        if (!node) {
            return null;
        }
        
        if (value < node.value) {
            node.left = this._removeNode(node.left, value);
            return node;
        } else if (value > node.value) {
            node.right = this._removeNode(node.right, value);
            return node;
        } else {
            // 找到要删除的节点
            
            // 情况 1: 叶子节点
            if (!node.left && !node.right) {
                return null;
            }
            
            // 情况 2: 只有一个子节点
            if (!node.left) {
                return node.right;
            }
            if (!node.right) {
                return node.left;
            }
            
            // 情况 3: 有两个子节点
            // 找到右子树中的最小节点
            const minRight = this._findMinNode(node.right);
            // 用最小节点的值替换当前节点的值
            node.value = minRight.value;
            // 删除右子树中的最小节点
            node.right = this._removeNode(node.right, minRight.value);
            return node;
        }
    }

    /**
     * 辅助方法：找到最小节点
     * @param {TreeNode} node - 当前节点
     * @returns {TreeNode} - 最小节点
     * @private
     */
    _findMinNode(node) {
        while (node.left) {
            node = node.left;
        }
        return node;
    }

    /**
     * 前序遍历
     * @param {function} callback - 回调函数，接收节点值作为参数
     */
    preOrderTraversal(callback) {
        this._preOrderTraversal(this.root, callback);
    }

    /**
     * 辅助方法：前序遍历
     * @param {TreeNode} node - 当前节点
     * @param {function} callback - 回调函数
     * @private
     */
    _preOrderTraversal(node, callback) {
        if (node) {
            callback(node.value);
            this._preOrderTraversal(node.left, callback);
            this._preOrderTraversal(node.right, callback);
        }
    }

    /**
     * 中序遍历
     * @param {function} callback - 回调函数，接收节点值作为参数
     */
    inOrderTraversal(callback) {
        this._inOrderTraversal(this.root, callback);
    }

    /**
     * 辅助方法：中序遍历
     * @param {TreeNode} node - 当前节点
     * @param {function} callback - 回调函数
     * @private
     */
    _inOrderTraversal(node, callback) {
        if (node) {
            this._inOrderTraversal(node.left, callback);
            callback(node.value);
            this._inOrderTraversal(node.right, callback);
        }
    }

    /**
     * 后序遍历
     * @param {function} callback - 回调函数，接收节点值作为参数
     */
    postOrderTraversal(callback) {
        this._postOrderTraversal(this.root, callback);
    }

    /**
     * 辅助方法：后序遍历
     * @param {TreeNode} node - 当前节点
     * @param {function} callback - 回调函数
     * @private
     */
    _postOrderTraversal(node, callback) {
        if (node) {
            this._postOrderTraversal(node.left, callback);
            this._postOrderTraversal(node.right, callback);
            callback(node.value);
        }
    }

    /**
     * 获取树的高度
     * @returns {number} - 树的高度
     */
    height() {
        return this._getHeight(this.root);
    }

    /**
     * 辅助方法：获取树的高度
     * @param {TreeNode} node - 当前节点
     * @returns {number} - 树的高度
     * @private
     */
    _getHeight(node) {
        if (!node) {
            return 0;
        }
        const leftHeight = this._getHeight(node.left);
        const rightHeight = this._getHeight(node.right);
        return Math.max(leftHeight, rightHeight) + 1;
    }

    /**
     * 检查树是否为空
     * @returns {boolean} - 树是否为空
     */
    isEmpty() {
        return this.length === 0;
    }

    /**
     * 获取树中节点数量
     * @returns {number} - 树中节点数量
     */
    size() {
        return this.length;
    }

    /**
     * 清空树
     */
    clear() {
        this.root = null;
        this.length = 0;
    }

    /**
     * 打印树
     */
    print() {
        console.log('二叉搜索树:');
        this._printNode(this.root, 0);
    }

    /**
     * 辅助方法：打印树
     * @param {TreeNode} node - 当前节点
     * @param {number} level - 当前层级
     * @private
     */
    _printNode(node, level) {
        if (node) {
            this._printNode(node.right, level + 1);
            console.log('  '.repeat(level) + node.value);
            this._printNode(node.left, level + 1);
        }
    }
}

// 测试二叉搜索树
if (require.main === module) {
    console.log('测试二叉搜索树:');
    const bst = new BinarySearchTree();
    
    // 测试 insert
    bst.insert(50);
    bst.insert(30);
    bst.insert(70);
    bst.insert(20);
    bst.insert(40);
    bst.insert(60);
    bst.insert(80);
    console.log('插入元素后:');
    bst.print();
    
    // 测试 search
    const node = bst.search(40);
    console.log(`查找元素 40: ${node ? '找到' : '未找到'}`);
    
    // 测试 inOrderTraversal
    console.log('中序遍历:');
    bst.inOrderTraversal(value => console.log(value));
    
    // 测试 preOrderTraversal
    console.log('前序遍历:');
    bst.preOrderTraversal(value => console.log(value));
    
    // 测试 postOrderTraversal
    console.log('后序遍历:');
    bst.postOrderTraversal(value => console.log(value));
    
    // 测试 remove
    console.log('删除元素 30 后:');
    bst.remove(30);
    bst.print();
    
    // 测试 height
    console.log(`树的高度: ${bst.height()}`);
    
    // 测试 size 和 isEmpty
    console.log(`树中节点数量: ${bst.size()}`);
    console.log(`树是否为空: ${bst.isEmpty()}`);
    
    // 测试 clear
    bst.clear();
    console.log('清空树后:');
    console.log(`树中节点数量: ${bst.size()}`);
    console.log(`树是否为空: ${bst.isEmpty()}`);
}

module.exports = BinarySearchTree;