defmodule LeetCodePractice.Solutions.ValidAnagram do
  @moduledoc """
  Given two strings s and t, return true if t is an anagram of s, and false otherwise.

  An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
  """

  @spec call(s :: String.t(), t :: String.t()) :: boolean
  def call(s, t) do
    word1 = do_valid_anagram(s)
    word2 = do_valid_anagram(t)

    word1 == word2
  end

  defp do_valid_anagram(string) do
    string
    |> String.split("")
    |> Enum.frequencies()
  end
end
