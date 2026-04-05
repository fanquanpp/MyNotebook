/*
 * @Author:      Anonymous
 * @Algorithm:   字典树 (Trie / Prefix Tree)
 * @Language:    Python 3.12
 * @Time Compl.: O(m) 其中 m 为字符串长度 | O(m) where m is the string length
 * @Description: 高效存储与检索字符串数据集中的键。常用于自动补全、拼写检查。 | Efficiently store and retrieve keys in a dataset of strings. Common in autocomplete and spell checkers.
 * @Teaching:    每个节点代表一个字符，路径代表字符串。利用空间换时间的典型案例。 | Each node represents a character, path represents string. Classic space-time tradeoff.
 */

class TrieNode:
    def __init__(self):
        self.children = {} # 字符到子节点的映射 | Character to child node map
        self.is_end_of_word = False # 标记是否为单词结尾 | Mark end of word

class Trie:
    def __init__(self):
        self.root = TrieNode()

    def insert(self, word: str) -> None:
        """插入单词 | Insert a word into trie"""
        node = self.root
        for char in word:
            if char not in node.children:
                node.children[char] = TrieNode()
            node = node.children[char]
        node.is_end_of_word = True

    def search(self, word: str) -> bool:
        """精确搜索单词 | Search for an exact word"""
        node = self.root
        for char in word:
            if char not in node.children:
                return False
            node = node.children[char]
        return node.is_end_of_word

    def starts_with(self, prefix: str) -> bool:
        """搜索前缀 | Search for a prefix"""
        node = self.root
        for char in prefix:
            if char not in node.children:
                return False
            node = node.children[char]
        return True

# 单元测试 | Unit Test
def test_trie():
    trie = Trie()
    trie.insert("apple")
    assert trie.search("apple") == True
    assert trie.search("app") == False
    assert trie.starts_with("app") == True
    trie.insert("app")
    assert trie.search("app") == True
    print("Trie tests passed! | 字典树测试通过！")

if __name__ == "__main__":
    test_trie()

# LeetCode: 208. Implement Trie (Prefix Tree)
