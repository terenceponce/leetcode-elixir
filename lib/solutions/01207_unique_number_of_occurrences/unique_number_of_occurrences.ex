defmodule LeetCodePractice.Solutions.UniqueNumberOfOccurrences do
  @moduledoc """
  Given an array of integers `arr`, return `true` if the number of occurrences of each value in the array is
  **unique** or `false` otherwise.
  """

  @spec call(arr :: [integer]) :: boolean
  def call(arr) do
    occurrences =
      arr
      |> Enum.frequencies()
      |> Map.values()

    unique_occurrences =
      occurrences
      |> MapSet.new()
      |> MapSet.size()

    Enum.count(occurrences) == unique_occurrences
  end
end
