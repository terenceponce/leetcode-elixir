# Valid Parentheses

**Link to Problem**: https://leetcode.com/problems/valid-parentheses

## Description

Given a string `s` containing just the characters `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`, determine if the input string is valid.

An input string is valid if:

1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.

## Examples

### Example 1

```
Input: s = "()"
Output: true
```

### Example 2

```
Input: s = "()[]{}"
Output: true
```

### Example 3

```
Input: s = "(]"
Output: false
```

## Thoughts

I looked up the solution for this immediately, but I will try to explain the solution in my own words
just to make sure that I actually understood how it works.

The first thing to note here is that the brackets must always be in proper order, so this immediately
suggests that we can deal with the problem by using a stack.

By using a stack, this means that we can check if the closing bracket matches the character before it
and then we can pop out both opening and closing brackets from the stack and then move on to the next
one.

Because of how Elixir works, we kind of have to imitate a stack data structure by using a separate list
to store each element that we've traversed in the character list so far.

Since we're iterating through a character list, we could opt to do recursion to do a loop. Also, we can
do pattern matching and performing a push/pop behavior on both lists using the cons operator.
