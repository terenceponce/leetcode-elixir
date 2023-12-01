defmodule LeetCodePractice.Solutions.ContainsDuplicate do
  @moduledoc """
  Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
  """

  @spec call([integer()]) :: boolean
  def call(nums) do
    do_contains_duplicate(nums, %{})
  end

  defp do_contains_duplicate([], _), do: false
  defp do_contains_duplicate([head | _tail], map) when is_map_key(map, head), do: true

  defp do_contains_duplicate([head | tail], map) do
    do_contains_duplicate(tail, Map.put(map, head, nil))
  end
end
