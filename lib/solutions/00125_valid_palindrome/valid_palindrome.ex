defmodule LeetCodePractice.Solutions.ValidPalindrome do
  @moduledoc """
  A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

  Given a string s, return true if it is a palindrome, or false otherwise.
  """

  @spec call(s :: String.t()) :: boolean
  def call(s) do
    tuple =
      s
      |> String.downcase()
      |> String.to_charlist()
      |> List.to_tuple()

    do_is_palindrome(tuple, 0, tuple_size(tuple) - 1)
  end

  defp do_is_palindrome(tuple, left, right) when is_tuple(tuple) and left < right do
    cond do
      !is_alnum?(elem(tuple, left)) -> do_is_palindrome(tuple, left + 1, right)
      !is_alnum?(elem(tuple, right)) -> do_is_palindrome(tuple, left, right - 1)
      elem(tuple, left) != elem(tuple, right) -> false
      true -> do_is_palindrome(tuple, left + 1, right - 1)
    end
  end

  defp do_is_palindrome(tuple, _, _) when is_tuple(tuple), do: true

  defp is_alnum?(char) do
    (?a <= char && char <= ?z) ||
      (?0 <= char && char <= ?9)
  end
end
