defmodule LeetCodePractice.Solutions.HowManyNumbersAreSmallerThanTheCurrentNumber do
  @moduledoc """
  Given the array nums, for each `nums[i]` find out how many numbers in the array are smaller than it. That is, for each `nums[i]`
  you have to count the number of valid `j's` such that `j != i` and `nums[j] < nums[i]`.

  Return the answer in an array.
  """

  @spec call(nums :: [integer]) :: [integer]
  def call(nums) do
    answer =
      nums
      |> Enum.sort()
      |> Enum.with_index()
      |> Enum.reduce(%{}, fn {num, index}, map ->
        Map.put_new(map, num, index)
      end)

    Enum.map(nums, fn num ->
      Map.get(answer, num)
    end)
  end
end
