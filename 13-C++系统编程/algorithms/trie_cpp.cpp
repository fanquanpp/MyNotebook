/*
 * @Author:      Anonymous
 * @Algorithm:   字典树 (Trie / Prefix Tree)
 * @Language:    C++ 17
 * @Time Compl.: O(m)
 * @Description: 高效存储与检索字符串。包含手动内存管理（析构函数）。 | Efficiently store and retrieve strings with manual memory management.
 * @Teaching:    26 叉树实现。递归析构或循环删除。 | 26-way tree implementation. Recursive destructor or loop-based deletion.
 */

#include <iostream>
#include <vector>
#include <string>

using namespace std;

class TrieNode {
public:
    TrieNode* children[26];
    bool is_end_of_word;
    
    TrieNode() : is_end_of_word(false) {
        for (int i = 0; i < 26; i++) children[i] = nullptr;
    }
    
    ~TrieNode() {
        for (int i = 0; i < 26; i++) {
            if (children[i]) delete children[i];
        }
    }
};

class Trie {
public:
    Trie() : root(new TrieNode()) {}
    ~Trie() { delete root; }
    
    void insert(string word) {
        TrieNode* node = root;
        for (char c : word) {
            int idx = c - 'a';
            if (!node->children[idx]) {
                node->children[idx] = new TrieNode();
            }
            node = node->children[idx];
        }
        node->is_end_of_word = true;
    }
    
    bool search(string word) {
        TrieNode* node = root;
        for (char c : word) {
            int idx = c - 'a';
            if (!node->children[idx]) return false;
            node = node->children[idx];
        }
        return node->is_end_of_word;
    }
    
    bool startsWith(string prefix) {
        TrieNode* node = root;
        for (char c : prefix) {
            int idx = c - 'a';
            if (!node->children[idx]) return false;
            node = node->children[idx];
        }
        return true;
    }
    
private:
    TrieNode* root;
};

// 单元测试 | Unit Test
void testTrie() {
    Trie trie;
    trie.insert("apple");
    if (trie.search("apple") && !trie.search("app") && trie.startsWith("app")) {
        trie.insert("app");
        if (trie.search("app")) {
            cout << "Trie tests passed! | 字典树测试通过！" << endl;
        }
    }
}

int main() {
    testTrie();
    return 0;
}

// LeetCode: 208. Implement Trie (Prefix Tree)
