defmodule LeetCodePractice.Solutions.BinarySearch do
  @moduledoc """
  Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

  You must write an algorithm with O(log n) runtime complexity.
  """

  @spec call(nums :: [integer], target :: integer) :: integer
  def call(nums, target) do
    tuple = List.to_tuple(nums)

    do_search(tuple, 0, tuple_size(tuple) - 1, target)
  end

  defp do_search(tuple, left, right, target) when is_tuple(tuple) and left <= right do
    index = floor((left + right) / 2)
    current = elem(tuple, index)

    cond do
      current < target -> do_search(tuple, index + 1, right, target)
      current > target -> do_search(tuple, left, index - 1, target)
      current == target -> index
    end
  end

  defp do_search(tuple, _, _, _) when is_tuple(tuple), do: -1
end
