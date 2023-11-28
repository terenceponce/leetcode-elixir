defmodule LeetCodePractice.Solutions.TwoSum do
  @moduledoc """
  Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

  You may assume that each input would have exactly one solution, and you may not use the same element twice.

  You can return the answer in any order.

  Link: https://leetcode.com/problems/two-sum/
  """

  @spec call(nums :: [integer], target :: integer) :: [integer]
  def call(nums, target) do
    nums
    |> Enum.with_index()
    |> Enum.reduce({%{}, []}, fn {num, index}, {map, result} ->
      case Map.get(map, target - num) do
        nil ->
          {Map.put(map, num, index), result}

        other ->
          {map, [other, index]}
      end
    end)
    |> elem(1)
  end
end
