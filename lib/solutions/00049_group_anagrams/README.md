# Group Anagrams

**Link to Problem**: https://leetcode.com/problems/group-anagrams

## Description

Given an array of strings `strs`, group **the anagrams** together. You can return the answer in **any order**.

An **Anagram** is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

## Examples

### Example 1

```
Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
```

### Example 2

```
Input: strs = [""]
Output: [[""]]
```

### Example 3

```
Input: strs = ["a"]
Output: [["a"]]
```

## Thoughts

Since this is a medium problem, I wanted to prioritize knowing what the solution was ASAP, but I did give it some thought first since I had
to run some errands before I was able to do this problem.

My initial thoughts were to use hash maps once again, but I realized that the solution isn't that simple because we have to group the words together.

So the question is how would we do the grouping?

I watched NeetCode's explanation and the summary is that we can sort the strings and somehow group them together in a hash map according to which
ones matched in terms of number of occurrences in a specific character when sorted. Based on my understanding, it should look like this if it's based on Example 1:

```
%{
  "aet" => ["eat", "tea", "ate"],
  "ant" => ["tan", "nat"]
}
```

Luckily, Elixir has a way to group things together thanks to `Enum.group_by/3`. It produces a new list that is sorted based on the function that was given.

I also learned that `String.split("")` behaves differently from `String.graphemes/1` in the sense that there are some extra elements produced by `String.split/2`
for some reason.

Regarding the way that the output is sorted, it looks like LeetCode doesn't care about it because all of the solutions I've seen have not done any sorting
to match the expected output regardless of the language used.
