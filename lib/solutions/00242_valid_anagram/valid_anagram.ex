defmodule LeetCodePractice.Solutions.ValidAnagram do
  @moduledoc """
  Given two strings s and t, return true if t is an anagram of s, and false otherwise.

  An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
  """

  @spec call(s :: String.t(), t :: String.t()) :: boolean
  def call(s, t) do
    map1 = do_valid_anagram(s)
    map2 = do_valid_anagram(t)

    map1 == map2
  end

  defp do_valid_anagram(string) do
    string
    |> String.split("")
    |> Enum.reduce(%{}, fn char, map ->
      case Map.get(map, char) do
        nil ->
          Map.put(map, char, 0)

        occurrences ->
          Map.put(map, char, occurrences + 1)
      end
    end)
  end
end
