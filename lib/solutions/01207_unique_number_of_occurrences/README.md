# Unique Number of Occurrences

**Link to Problem**: https://leetcode.com/problems/unique-number-of-occurrences

## Description

Given an array of integers `arr`, return `true` if the number of occurrences of each value in the array is
**unique** or `false` otherwise.

## Examples

### Example 1

```
Input: arr = [1,2,2,1,1,3]
Output: true
Explanation: The value 1 has 3 occurrences, 2 has 2 and 3 has 1. No two values have the same number of occurrences.
```

### Example 2

```
Input: arr = [1,2]
Output: false
```

### Example 3

```
Input: arr = [-3,0,1,-3,1,1,1,-3,10,0]
Output: true
```

## Thoughts

I've done a couple of hash table problems at this point, so it was actually easy to write the solution for this.

I have learned a few new things that I could probably use in future problems.

First is `Map.values/1` which is a convenience function to convert all values of a map into a list. 

Second is the `MapSet` data structure which I honestly have forgotten is a thing. It's Elixir's Hash Set and, as
expected in most programming languages, can only contain unique elements inside it.
