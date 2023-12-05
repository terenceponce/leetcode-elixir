# Merge Two Sorted Lists

**Link to Problem**: https://leetcode.com/problems/merge-two-sorted-lists

## Description

You are given the heads of two sorted linked lists `list1` and `list2`.

Merge the two lists into one **sorted** list. The list should be made by splicing together the nodes of the first two lists.

Return *the head of the merged linked list*.

## Examples

### Example 1

```mermaid
graph LR
    A((1)) --> B((2))
    B --> C((4))

    D((1)) --> E((3))
    E --> F((4))

    G((1)) -> H((1))
    H --> I((2))
    I --> J((3))
    J --> K((4))
    K --> L((4))
```

```
Input: list1 = [1,2,4], list2 = [1,3,4]
Output: [1,1,2,3,4,4]
```

### Example 2

```
Input: list1 = [], list2 = []
Output: []
```

### Example 3

```
Input: list1 = [], list2 = [0]
Output: [0]
```

## Thoughts

I was able to figure out the algorithm on my own, but I guess I still need to get used to writing
recursion code because I had to look up the LeetCode solutions for Elixir.

The algorithm is actually really simple. You just compare both nodes in the linked list and store
whichever is lower and then move to the next node.
