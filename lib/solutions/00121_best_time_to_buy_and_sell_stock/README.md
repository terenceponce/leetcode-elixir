# Best Time to Buy and Sell Stock

**Link to Problem**: https://leetcode.com/problems/best-time-to-buy-and-sell-stock

## Description

You are given an array `prices` where `prices[i]` is the price of a given stock on the `ith` day.

You want to maximize your profit by choosing a **single day** to buy one stock and choosing a **different day** in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return `0`.

## Examples

### Example 1

```
Input: prices = [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
```

### Example 2

```
Input: prices = [7,6,4,3,1]
Output: 0
Explanation: In this case, no transactions are done and the max profit = 0.
```

## Thoughts

I initially misunderstood this problem, so I didn't figure out what the solution should be.

Anyway, the algorithm for this is surprisingly simple despite what the title of the problem seems to suggest.

It's pretty similar to [125 - Valid Palindrome](../00125_valid_palindrome) in the sense that we are using two pointers
to check the minimum price and the current price. However, this solution doesn't involve stacks or recursion. Just a simple
reduce is enough to do the job.

I think this is the problem though. My first instinct was to maybe do a recursion to do a loop, but apparently reducing the
list is enough. Maybe I just need to do more problems to get used to figuring out the simplest solution.
