// Binary Search Tree implementation in TypeScript

class TreeNode<T> {
  value: T;
  left: TreeNode<T> | null;
  right: TreeNode<T> | null;

  constructor(value: T) {
    this.value = value;
    this.left = null;
    this.right = null;
  }
}

class BinarySearchTree<T> {
  private root: TreeNode<T> | null;

  constructor() {
    this.root = null;
  }

  // Insert a value into the BST
  insert(value: T): void {
    const newNode = new TreeNode(value);
    if (this.root === null) {
      this.root = newNode;
      return;
    }

    this.insertNode(this.root, newNode);
  }

  private insertNode(node: TreeNode<T>, newNode: TreeNode<T>): void {
    if (newNode.value < node.value) {
      if (node.left === null) {
        node.left = newNode;
      } else {
        this.insertNode(node.left, newNode);
      }
    } else {
      if (node.right === null) {
        node.right = newNode;
      } else {
        this.insertNode(node.right, newNode);
      }
    }
  }

  // Search for a value in the BST
  search(value: T): boolean {
    return this.searchNode(this.root, value);
  }

  private searchNode(node: TreeNode<T> | null, value: T): boolean {
    if (node === null) {
      return false;
    }

    if (value === node.value) {
      return true;
    } else if (value < node.value) {
      return this.searchNode(node.left, value);
    } else {
      return this.searchNode(node.right, value);
    }
  }

  // In-order traversal
  inOrderTraversal(callback: (value: T) => void): void {
    this.inOrderTraversalNode(this.root, callback);
  }

  private inOrderTraversalNode(node: TreeNode<T> | null, callback: (value: T) => void): void {
    if (node !== null) {
      this.inOrderTraversalNode(node.left, callback);
      callback(node.value);
      this.inOrderTraversalNode(node.right, callback);
    }
  }

  // Pre-order traversal
  preOrderTraversal(callback: (value: T) => void): void {
    this.preOrderTraversalNode(this.root, callback);
  }

  private preOrderTraversalNode(node: TreeNode<T> | null, callback: (value: T) => void): void {
    if (node !== null) {
      callback(node.value);
      this.preOrderTraversalNode(node.left, callback);
      this.preOrderTraversalNode(node.right, callback);
    }
  }

  // Post-order traversal
  postOrderTraversal(callback: (value: T) => void): void {
    this.postOrderTraversalNode(this.root, callback);
  }

  private postOrderTraversalNode(node: TreeNode<T> | null, callback: (value: T) => void): void {
    if (node !== null) {
      this.postOrderTraversalNode(node.left, callback);
      this.postOrderTraversalNode(node.right, callback);
      callback(node.value);
    }
  }

  // Find the minimum value
  findMin(): T | null {
    if (this.root === null) {
      return null;
    }
    return this.findMinNode(this.root).value;
  }

  private findMinNode(node: TreeNode<T>): TreeNode<T> {
    return node.left === null ? node : this.findMinNode(node.left);
  }

  // Find the maximum value
  findMax(): T | null {
    if (this.root === null) {
      return null;
    }
    return this.findMaxNode(this.root).value;
  }

  private findMaxNode(node: TreeNode<T>): TreeNode<T> {
    return node.right === null ? node : this.findMaxNode(node.right);
  }

  // Remove a value from the BST
  remove(value: T): void {
    this.root = this.removeNode(this.root, value);
  }

  private removeNode(node: TreeNode<T> | null, value: T): TreeNode<T> | null {
    if (node === null) {
      return null;
    }

    if (value < node.value) {
      node.left = this.removeNode(node.left, value);
      return node;
    } else if (value > node.value) {
      node.right = this.removeNode(node.right, value);
      return node;
    } else {
      // Case 1: Leaf node
      if (node.left === null && node.right === null) {
        return null;
      }

      // Case 2: Node with one child
      if (node.left === null) {
        return node.right;
      }
      if (node.right === null) {
        return node.left;
      }

      // Case 3: Node with two children
      const minRight = this.findMinNode(node.right);
      node.value = minRight.value;
      node.right = this.removeNode(node.right, minRight.value);
      return node;
    }
  }

  // Get the height of the tree
  getHeight(): number {
    return this.getHeightNode(this.root);
  }

  private getHeightNode(node: TreeNode<T> | null): number {
    if (node === null) {
      return 0;
    }
    return Math.max(
      this.getHeightNode(node.left),
      this.getHeightNode(node.right)
    ) + 1;
  }

  // Check if the tree is balanced
  isBalanced(): boolean {
    return this.checkBalance(this.root) !== -1;
  }

  private checkBalance(node: TreeNode<T> | null): number {
    if (node === null) {
      return 0;
    }

    const leftHeight = this.checkBalance(node.left);
    if (leftHeight === -1) {
      return -1;
    }

    const rightHeight = this.checkBalance(node.right);
    if (rightHeight === -1) {
      return -1;
    }

    if (Math.abs(leftHeight - rightHeight) > 1) {
      return -1;
    }

    return Math.max(leftHeight, rightHeight) + 1;
  }
}

// Usage example
const bst = new BinarySearchTree<number>();
bst.insert(10);
bst.insert(5);
bst.insert(15);
bst.insert(3);
bst.insert(7);
bst.insert(12);
bst.insert(18);

console.log('In-order traversal:');
bst.inOrderTraversal(value => console.log(value));

console.log('\nPre-order traversal:');
bst.preOrderTraversal(value => console.log(value));

console.log('\nPost-order traversal:');
bst.postOrderTraversal(value => console.log(value));

console.log('\nMinimum value:', bst.findMin());
console.log('Maximum value:', bst.findMax());
console.log('Height:', bst.getHeight());
console.log('Is balanced:', bst.isBalanced());

console.log('\nSearching for 7:', bst.search(7));
console.log('Searching for 20:', bst.search(20));

console.log('\nRemoving 5:');
bst.remove(5);
bst.inOrderTraversal(value => console.log(value));

export { BinarySearchTree, TreeNode };