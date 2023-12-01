defmodule LeetCodePractice.Solutions.ContainsDuplicate do
  @moduledoc """
  Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
  """

  @spec call([integer()]) :: boolean
  def call(nums) do
    nums
    |> Enum.reduce({[], false}, fn num, {list, _result} ->
      case Enum.at(list, num) do
        nil ->
          {[num | list], false}

        _something ->
          {[num | list], true}
      end
    end)
    |> elem(1)
  end
end
