# Valid Palindrome

**Link to Problem**: https://leetcode.com/problems/valid-palindrome

## Description

A phrase is a **palindrome** if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string `s`, return `true` if it is a **palindrome**, or `false` otherwise.

## Examples

### Example 1

```
Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
```

### Example 2

```
Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
```

### Example 3

```
Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.
```

## Thoughts

This was my first Two Pointers problem and while it is a LeetCode Easy, I still had some problems with it
because I've never done it before.

So of course, I immediately looked up the solution for this. I started with watching NeetCode's explanation
of the solution.

While the explanation made sense, I did not have any idea about how to do it in Elixir, so I had to look up
the solutions for Elixir.

Some of the solutions looked really complicated that I had to take a second look to see if it was really
Elixir code. I eventually found a simpler solution that honestly looks similar to NeetCode's solution
in Python.

I have learned some new things with the solution I've seen.

First of all, I mentioned in [49 - Group Anagrams](../00049_group_anagrams) that I discovered that
`String.split("")` behaves differently from `String.grapheme/1`.

Well, apparently, `String.to_charlist/1` also behaves differently from the other 2 functions I mentioned and I
guess I should just always use that function to split a string into characters moving forward because it's
the one that works as how you would expect it to.

I also learned that using `cond` is a good flow control mechanism to use when dealing with two pointers.

I'm also noticing a pattern in these Elixir solutions where recursion is used a lot to do loops.
