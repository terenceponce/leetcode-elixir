defmodule LeetCodePractice.Solutions.MajorityElement do
  @moduledoc """
  Given an array `nums` of size `n`, return the majority element.

  The majority element is the element that appears more than `⌊n / 2⌋` times. You may assume that the majority element always exists in the array.
  """

  @spec call(nums :: [integer]) :: integer
  def call(nums) do
    nums
    |> Enum.frequencies()
    |> Enum.max_by(fn {_, value} -> value end)
    |> elem(0)
  end
end
