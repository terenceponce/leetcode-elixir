# Number of Good Pairs

**Link to Problem**: https://leetcode.com/problems/number-of-good-pairs

## Description

Given an array of integers `nums`, return the number of **good pairs**.

A pair `(i, j)` is called good if `nums[i] == nums[j]` and `i < j`.

## Examples

### Example 1

```
Input: nums = [1,2,3,1,1,3]
Output: 4
Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
```

### Example 2

```
Input: nums = [1,1,1,1]
Output: 6
Explanation: Each pair in the array are good.
```

### Example 3

```
Input: nums = [1,2,3]
Output: 0
```

## Thoughts

Initially, I thought it would be similar to [1 - Two Sum](../00001_two_sum) where we would store each
element into a hash map, but that quickly fell apart after realizing that there are repeating elements.

After debugging the process on paper and reading the hint given by LeetCode for the problem, I was able
to figure out that the hash map should include the number of times a specific number has appeared in the
list.

So the solution is to count the number of times and then apply the formula that was given by LeetCode as
a hint. NeetCode said that this was a formula for statistics to figure out the number of permutations.

My initial solution has a really high runtime and I'm guessing it's because I looped through the hash map
after looping through the list. I'm guessing the time complexity is `O(n^2)`, but I could be wrong.

I was able to refine the solution for a bit. Since the solution initially involved a hash map counting the
number of occurrences, I was able to replace it with `Enum.frequencies/1` because it does the same thing.
I should probably remember to use that more next time.

Another refinement that I was able to do was to just replace the whole reduce block with `Enum.map` and
`Enum.sum` since the values of the resulting list from `Enum.map` are just integers.

After refining the solution, I realized that the time complexity is already `O(n)` for the initial solution
because we're really only going through everything once.
