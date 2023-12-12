# How Many Numbers Are Smaller Than The Current Number

**Link to Problem**: https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number

## Description

Given the array nums, for each `nums[i]` find out how many numbers in the array are smaller than it. That is, for each `nums[i]`
you have to count the number of valid `j's` such that `j != i` and `nums[j] < nums[i]`.

Return the answer in an array.

## Examples

### Example 1

```
Input: nums = [8,1,2,2,3]
Output: [4,0,1,1,3]
Explanation: 
For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3). 
For nums[1]=1 does not exist any smaller number than it.
For nums[2]=2 there exist one smaller number than it (1). 
For nums[3]=2 there exist one smaller number than it (1). 
For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).
```

### Example 2

```
Input: nums = [6,5,4,8]
Output: [2,1,0,3]
```

```
Input: nums = [7,7,7,7]
Output: [0,0,0,0]
```

## Thoughts

My initial solution is essentially just a brute force. Iterate through each element and from there, iterate once again to check
how many times the current element is larger than the rest of the elements in the list.

Eventually, I realized that it is indeed possible to use hash maps for this solution by sorting the list first.

By sorting the list, we can store the value of each element according to its index. So in the case of the first example, the
sorted list would look like this: `[1, 2, 2, 3, 8]`

So `1` would have a value of `0` because it's the first element. It also makes sense because it is the smallest number in the list.

`2` would have a value of `1` because it's the first instance of `2` and it is also just larger than one element. The duplicate `2`
won't be stored because it should technically still be only larger than one element.
