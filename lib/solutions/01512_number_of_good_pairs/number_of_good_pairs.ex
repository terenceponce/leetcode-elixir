defmodule LeetCodePractice.Solutions.NumberOfGoodPairs do
  @moduledoc """
  Given an array of integers `nums`, return the number of **good pairs**.

  A pair `(i, j)` is called good if `nums[i] == nums[j]` and `i < j`.
  """

  @spec call(nums :: [integer]) :: integer
  def call(nums) do
    nums
    |> Enum.reduce(%{}, fn num, map ->
      case Map.get(map, num) do
        nil ->
          Map.put(map, num, 1)

        val ->
          Map.put(map, num, val + 1)
      end
    end)
    |> Enum.reduce(0, fn {_key, value}, answer ->
      pairs = (value * (value - 1)) / 2
      answer + trunc(pairs)
    end)
  end
end
