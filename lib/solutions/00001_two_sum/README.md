# Two Sum

**Link to Problem**: https://leetcode.com/problems/two-sum

## Description

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

## Examples

### Example 1

```
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
```

### Example 2

```
Input: nums = [3,2,4], target = 6
Output: [1,2]
```

### Example 3

```
Input: nums = [3,3], target = 6
Output: [0,1]
```

## Solution

This is my first ever LeetCode problem and I usually suck at algorithms, so this took me a long time to get.

For people like me, the first solution I thought of was to iterate through each element in the list, compare it with all the other elements in the list, and try to add both elements to see if it matches the target.

Unfortunately, while this does work, it is very slow because you have to go through the list multiple times in order to get the result.

The optimal solution is to use a Hash Map (or a Map since we are using Elixir) which makes it possible to get the same answer while only going through the list once.

Before we dive into the solution itself, I'd like to discuss something else first.

One thing that I had to realize was that there was another way to figure out what elements it would take to reach the target. The obvious solution is to perform addition on all the elements until we get a sum that matches the target.

Another way is to do it backwards and perform subtraction instead. We take the current element and subtract that from the target. From there, we try to figure out if there is an element that matches the difference.

So how do we do that exactly? By creating a new variable and storing all the value and index of the current element if it doesn't satisfy the condition to match the target. In this case, we create a Hash Map (or Map in Elixir) since it allows us to store both value and index.

In the case of Example 2, it would look like this:

```
[3, 2, 4]
 ^
 |
we are here
```

Since the target is `6`, we will do `6 - 3` which is `3`. What we then do is look at our map to see if there is an element that has `3` as the value.

At this point, our map is still empty, so there won't be any matches. The conclusion for this element is that we will skip it and go to the next one. However, we will also add this element into the map before we move to the next one:

```elixir
%{3: 0}
```

We put the value as the key, so we can use it for lookups (`Map.get`) and the index as the value, so we can get it later.

After we stored the first element into the map, we will go to the next element:

```
[3, 2, 4]
    ^
    |
we are here
```

At this point, we will try to do `6 - 2` which is `4`. We then look at the map to see if we have any matches.

Since we only have `3` inside the map, there won't be any matches. So we repeat what we did in the previous element which is to add the current element to the map and move on to the next element:

```elixir
%{3: 0, 2: 1}
```

Afterwards, we go to the last element:

```
[3, 2, 4]
       ^
       |
we are here
```

Obviously, we will try to do `6 - 4` which will result to `2`. If we do `Map.get(map, target - num)`, we will get `2` which has the value of `1`. From there, we should now be able to determine that the indices `[1, 2]` are the answer.
