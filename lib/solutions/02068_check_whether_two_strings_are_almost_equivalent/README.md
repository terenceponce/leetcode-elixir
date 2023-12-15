# Check Whether Two Strings are Almost Equivalent

**Link to Problem**: https://leetcode.com/problems/check-whether-two-strings-are-almost-equivalent

## Description

Two strings `word1` and `word2` are considered **almost equivalent** if the differences between the frequencies of each letter from `'a'` to `'z'` between `word1` and `word2` is at **most** `3`.

Given two strings `word1` and `word2`, each of length `n`, return `true` if `word1` and `word2` are **almost equivalent**, or `false` otherwise.

The frequency of a letter `x` is the number of times it occurs in the string.

## Examples

### Example 1

```
Input: word1 = "aaaa", word2 = "bccb"
Output: false
Explanation: There are 4 'a's in "aaaa" but 0 'a's in "bccb".
The difference is 4, which is more than the allowed 3.
```

### Example 2

```
Input: word1 = "abcdeef", word2 = "abaaacc"
Output: true
Explanation: The differences between the frequencies of each letter in word1 and word2 are at most 3:
- 'a' appears 1 time in word1 and 4 times in word2. The difference is 3.
- 'b' appears 1 time in word1 and 1 time in word2. The difference is 0.
- 'c' appears 1 time in word1 and 2 times in word2. The difference is 1.
- 'd' appears 1 time in word1 and 0 times in word2. The difference is 1.
- 'e' appears 2 times in word1 and 0 times in word2. The difference is 2.
- 'f' appears 1 time in word1 and 0 times in word2. The difference is 1.
```

### Example 3

```
Input: word1 = "cccddabba", word2 = "babababab"
Output: true
Explanation: The differences between the frequencies of each letter in word1 and word2 are at most 3:
- 'a' appears 2 times in word1 and 4 times in word2. The difference is 2.
- 'b' appears 2 times in word1 and 5 times in word2. The difference is 3.
- 'c' appears 3 times in word1 and 0 times in word2. The difference is 3.
- 'd' appears 2 times in word1 and 0 times in word2. The difference is 2.
```

## Thoughts

Initially thought I should use `Enum.frequencies()` on both words and compare, but then I would
have to do another loop to compare the difference between each hash maps, so I didn't go for it.

I ended up just initializing a blank hash map and looping through each word to count the occurrences
of each character. The loop on the first word will count positively on each character and the loop
on the second word will count negatively on each character.

Once we get a resulting hash map from counting both words, we will filter the hash map to remove
any frequencies that are below `4` and return `false` if the filtered hash map still has data
inside it and `true` if otherwise.
