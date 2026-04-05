/*
 * @Author:      Anonymous
 * @Algorithm:   KMP 算法 (Knuth-Morris-Pratt / KMP)
 * @Language:    Python 3.12
 * @Time Compl.: O(n + m) 其中 n 为主串长度，m 为模式串长度 | O(n + m) where n is text length, m is pattern length
 * @Description: 在主串中查找模式串的所有出现位置。通过预计算模式串的最长前缀后缀 (LPS) 数组避免重复比较。 | Search for occurrences of a pattern within a text by precomputing the Longest Prefix Suffix (LPS) array to avoid redundant comparisons.
 * @Teaching:    核心在于 LPS 数组：记录模式串中每个位置的最长相同前缀与后缀的长度。 | Core is the LPS array: storing the length of the longest matching prefix and suffix for each position in the pattern.
 */

def compute_lps(pattern):
    """
    预计算模式串的最长前缀后缀数组 | Precompute the LPS array
    """
    m = len(pattern)
    lps = [0] * m
    length = 0 # 记录当前最长匹配长度 | Current longest matching prefix length
    i = 1
    
    while i < m:
        if pattern[i] == pattern[length]:
            length += 1
            lps[i] = length
            i += 1
        else:
            if length != 0:
                length = lps[length - 1] # 回退 | Backtrack
            else:
                lps[i] = 0
                i += 1
    return lps

def kmp_search(text, pattern):
    """
    在 text 中搜索 pattern | Search for pattern in text
    :return: 模式串在主串中所有出现的起始索引列表 | List of starting indices
    """
    n = len(text)
    m = len(pattern)
    if m == 0:
        return []
        
    lps = compute_lps(pattern)
    result = []
    i = 0 # text 的索引 | Index for text
    j = 0 # pattern 的索引 | Index for pattern
    
    while i < n:
        if text[i] == pattern[j]:
            i += 1
            j += 1
            
        if j == m:
            result.append(i - j) # 找到匹配 | Match found
            j = lps[j - 1] # 继续搜索 | Continue search
        elif i < n and text[i] != pattern[j]:
            if j != 0:
                j = lps[j - 1] # 回退 | Backtrack
            else:
                i += 1
    return result

# 单元测试 | Unit Test
def test_kmp():
    text = "ABABDABACDABABCABAB"
    pattern = "ABABCABAB"
    # LPS: [0, 0, 1, 2, 0, 1, 2, 3, 4]
    # Match at index 10
    assert kmp_search(text, pattern) == [10]
    assert kmp_search("AAAAA", "AAA") == [0, 1, 2]
    assert kmp_search("ABCDE", "F") == []
    print("KMP tests passed! | KMP 算法测试通过！")

if __name__ == "__main__":
    test_kmp()

# LeetCode: 28. Find the Index of the First Occurrence in a String
# 洛谷: P3375 【模板】KMP
