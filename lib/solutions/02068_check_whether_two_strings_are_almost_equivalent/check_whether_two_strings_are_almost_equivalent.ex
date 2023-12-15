defmodule LeetCodePractice.Solutions.CheckWhetherTwoStringsAreAlmostEquivalent do
  @moduledoc """
  Two strings `word1` and `word2` are considered **almost equivalent** if the differences between the frequencies of each letter from `'a'` to `'z'` between `word1` and `word2` is at **most** `3`.

  Given two strings `word1` and `word2`, each of length `n`, return `true` if `word1` and `word2` are **almost equivalent**, or `false` otherwise.

  The frequency of a letter `x` is the number of times it occurs in the string.
  """

  @spec call(word1 :: String.t, word2 :: String.t) :: boolean
  def call(word1, word2) when byte_size(word1) == byte_size(word2) do
    %{}
    |> count_occurrences(word1)
    |> count_occurrences(word2, true)
    |> Enum.filter(fn {_, val} -> abs(val) > 3 end)
    |> Enum.any?()
    |> Kernel.not
  end

  def call(_, _), do: false

  defp count_occurrences(map, word, reverse \\ false) do
    word
    |> String.downcase()
    |> String.graphemes()
    |> Enum.reduce(map, fn char, map ->
      case Map.get(map, char) do
        nil ->
          new_value = if reverse, do: -1, else: 1
          Map.put(map, char, new_value)

        val ->
          new_value = if reverse, do: val - 1, else: val + 1
          Map.put(map, char, new_value)
      end
    end)
  end
end
