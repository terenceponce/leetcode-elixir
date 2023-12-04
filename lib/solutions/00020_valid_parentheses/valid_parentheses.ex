defmodule LeetCodePractice.Solutions.ValidParentheses do
  @moduledoc """
  Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

  An input string is valid if:

      Open brackets must be closed by the same type of brackets.
      Open brackets must be closed in the correct order.
      Every close bracket has a corresponding open bracket of the same type.

  """

  @spec call(s :: String.t()) :: boolean
  def call(s) do
    s
    |> String.split("", trim: true)
    |> do_is_valid([])
  end

  defp do_is_valid([], []), do: true
  defp do_is_valid(["(" | string_tail], queue), do: do_is_valid(string_tail, ["(" | queue])
  defp do_is_valid(["[" | string_tail], queue), do: do_is_valid(string_tail, ["[" | queue])
  defp do_is_valid(["{" | string_tail], queue), do: do_is_valid(string_tail, ["{" | queue])

  defp do_is_valid([")" | string_tail], ["(" | queue_tail]) do
    do_is_valid(string_tail, queue_tail)
  end

  defp do_is_valid(["]" | string_tail], ["[" | queue_tail]) do
    do_is_valid(string_tail, queue_tail)
  end

  defp do_is_valid(["}" | string_tail], ["{" | queue_tail]) do
    do_is_valid(string_tail, queue_tail)
  end

  defp do_is_valid(_, _), do: false
end
