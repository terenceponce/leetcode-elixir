defmodule LeetCodePractice.Solutions.GroupAnagrams do
  @moduledoc """
  Given an array of strings strs, group the anagrams together. You can return the answer in any order.

  An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
  """

  @spec call(strs :: [String.t()]) :: [[String.t()]]
  def call(strs) do
    strs
    |> Enum.group_by(fn word ->
      word
      |> String.graphemes()
      |> Enum.sort()
    end)
    |> Enum.map(fn {_key, value} -> value end)
  end
end
