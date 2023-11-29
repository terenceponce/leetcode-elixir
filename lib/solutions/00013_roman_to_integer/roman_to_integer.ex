defmodule LeetCodePractice.Solutions.RomanToInteger do
  @moduledoc """
  Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

  Symbol       Value
  I             1
  V             5
  X             10
  L             50
  C             100
  D             500
  M             1000

  For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

  Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

      I can be placed before V (5) and X (10) to make 4 and 9. 
      X can be placed before L (50) and C (100) to make 40 and 90. 
      C can be placed before D (500) and M (1000) to make 400 and 900.

  Given a roman numeral, convert it to an integer.

  Link: https://leetcode.com/problems/roman-to-integer/
  """

  @spec call(String.t()) :: integer()
  def call(s) do
    values =
      s
      |> String.split("", trim: true)
      |> Enum.map(&roman_to_integer/1)
      |> Enum.with_index()

    Enum.reduce(values, 0, fn {x, i}, acc ->
      if i < length(values) - 1 do
        next = Enum.at(values, i + 1) |> elem(0)

        if x < next do
          acc - x
        else
          acc + x
        end
      else
        acc + x
      end
    end)
  end

  defp roman_to_integer("I"), do: 1
  defp roman_to_integer("V"), do: 5
  defp roman_to_integer("X"), do: 10
  defp roman_to_integer("L"), do: 50
  defp roman_to_integer("C"), do: 100
  defp roman_to_integer("D"), do: 500
  defp roman_to_integer("M"), do: 1000
end
