defmodule LeetCodePractice.Solutions.TwoSumTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.TwoSum

  test "Case 1 works" do
    assert TwoSum.call([2, 7, 11, 15], 9) == [0, 1]
  end

  test "Case 2 works" do
    assert TwoSum.call([3, 2, 4], 6) == [1, 2]
  end

  test "Case 3 works" do
    assert TwoSum.call([3, 3], 6) == [0, 1]
  end
end
