defmodule LeetCodePractice.Solutions.NumberOfGoodPairs do
  @moduledoc """
  Given an array of integers `nums`, return the number of **good pairs**.

  A pair `(i, j)` is called good if `nums[i] == nums[j]` and `i < j`.
  """

  @spec call(nums :: [integer]) :: integer
  def call(nums) do
    nums
    |> Enum.frequencies()
    |> Enum.map(fn {_key, count} ->
      # Could also just do it this way
      # (count * (count - 1)) / 2 |> trunc()
      # I did the pipe approach to make credo happy

      count
      |> Kernel.-(1)
      |> Kernel.*(count)
      |> div(2)
      |> trunc()
    end)
    |> Enum.sum()
  end
end
