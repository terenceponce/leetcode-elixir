# Valid Anagram

**Link to Problem**: https://leetcode.com/problems/valid-anagram

## Description

Given two strings `s` and `t`, return `true` if `t` is an anagram of `s`, and `false` otherwise.

An **Anagram** is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

## Examples

### Example 1

```
Input: s = "anagram", t = "nagaram"
Output: true
```

### Example 2

```
Input: s = "rat", t = "car"
Output: false
```

## Thoughts

Even though this is an Easy question, I'm so proud of myself for immediately figuring out how to solve this.

Honestly, if this question was presented to me before I started taking LeetCode seriously, I probably wouldn't have a clue
about how to get started.

I used to dismiss LeetCode thinking that it's just a waste of time because we don't really use the things we do here
when it comes to programming in the real world, but I think I may have been mistaken. I think I would have been able to use
my newfound knowledge on some problems that I've dealt with in past jobs.

Apologies for the rambling, but please give me this small moment of victory.

Anyway, while I did get the solution correct in the first try, I'm 100% sure it is very inefficient.

After I wrote my initial solution, I watched NeetCode's video on this problem and I confirmed that my solution was indeed inefficient.

Another approach would be to just sort both strings and compare them. Honestly, it was the first thing I thought of, but I immediately
dismissed the thought because I assumed that it would be a very inefficient solution. Apparently, I was wrong, so I looked at the
top solution for Elixir.

And holy crap, the solution for Elixir feels like cheating. Apparently `Enum.frequencies/1` is a thing and it does exactly what I did
with my initial solution.

One thing I noticed though is that submitting the new solution doesn't seem to be any improvement over the old one. I tried submitting it
a second time and the runtime improved. I guess there is some randomness to how efficient a solution would run.
