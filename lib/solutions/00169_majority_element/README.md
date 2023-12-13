# Majority Element

**Link to Problem**: https://leetcode.com/problems/majority-element

## Description

Given an array `nums` of size `n`, return the majority element.

The majority element is the element that appears more than `⌊n / 2⌋` times. You may assume that the majority element always exists in the array.

## Examples

### Example 1

```
Input: nums = [3,2,3]
Output: 3
```

### Example 2

```
Input: nums = [2,2,1,1,1,2,2]
Output: 2
```

## Thoughts

This problem is easy in Elixir. The thing I struggled with was figuring out how to loop through a map.

I eventually learned that the `Enum` module can iterate through maps by first converting them into a list of
tuples. I've seen it and have actually done this multiple times throughout my Elixir career, but this bit of
knowledge didn't immediately dawn on me which is kind of funny.

Once I figured out that I could use `Enum`, I knew to just use `Enum.max_by` to return the number with the
highest value.

As far as time complexity goes, I think it is `O(n)` because both `Enum.frequencies` and `Enum.max_by` take
up `O(n)` time complexity.
