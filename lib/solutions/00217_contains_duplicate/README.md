# Contains Duplicate

**Link to Problem**: https://leetcode.com/problems/contains-duplicate

## Description

Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

## Examples

### Example 1

```
Input: nums = [1,2,3,1]
Output: true
```

### Example 2

```
Input: nums = [1,2,3,4]
Output: false
```

### Example 3

```
Input: nums = [1,1,1,3,3,4,3,2,4,2]
Output: true
```

### Thoughts

This is a LeetCode Easy, but it is surprisingly complex compared to `13 - Roman To Integer` which is another Easy.

I initially thought of using a similar solution to `1 - Two Sum` where we go through the list and store each iteration to a map, so we can later read from it to see if the value exists.

While I was writing it, I realized I should probably just use a regular list instead. Funnily enough, it worked on the first 3 cases, but it failed in a lot of the other cases that LeetCode runs when submitting a solution.

I eventually just looked at the top solution for Elixir and I found that recursion is a better approach compared to what I did.

So what the copied solution did was to pop out the head of the list with each iteration and do a recursion to loop through the whole list.

I then watched NeetCode's explanation of the solution in Python and it is way different from how it would be written in Elixir because it's a functional language where variables can't be mutated.

This got me thinking if Elixir is worth using when grinding LeetCode moving forward. I guess for now it's fine.
