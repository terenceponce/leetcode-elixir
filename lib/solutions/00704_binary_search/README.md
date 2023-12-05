# Binary Search

**Link to Problem**: https://leetcode.com/problems/binary-search

## Description

Given an array of integers `nums` which is sorted in ascending order, and an integer `target`, write a function to search `target` in `nums`. If `target` exists, then return its index. Otherwise, return `-1`.

You must write an algorithm with `O(log n)` runtime complexity.

## Examples

### Example 1

```
Input: nums = [-1,0,3,5,9,12], target = 9
Output: 4
Explanation: 9 exists in nums and its index is 4
```

### Example 2

```
Input: nums = [-1,0,3,5,9,12], target = 2
Output: -1
Explanation: 2 does not exist in nums so return -1
```

## Thoughts

I am so proud about my solution for this problem because I thought of it on my own!
Well, not completely my own because the solution is based on another problem that I've done.

What I did initially was to look at the solutions. I first watched NeetCode's explanation of binary search
and then I looked at the LeetCode submissions for Elixir. Unfortunately, I was not happy with the solutions
I found there because they were either hard to read or inefficient in terms of time complexity.

Since NeetCode mentioned the usage of two pointers, I immediately thought of the solution to [125 - Valid Palindrome](../00125_valid_palindrome).
So I went back and tried to figure out how to apply that solution to implement binary search.

The solution I ended up writing had a really good run time, so I decided to submit it. I feel great right now!
