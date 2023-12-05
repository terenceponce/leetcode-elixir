defmodule LeetCodePractice.Solutions.BinarySearchTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.BinarySearch

  test "Case 1 works" do
    assert BinarySearch.call([-1, 0, 3, 5, 9, 12], 9) == 4
  end

  test "Case 2 works" do
    assert BinarySearch.call([-1, 0, 3, 5, 9, 12], 2) == -1
  end

  test "Case 25 works" do
    assert BinarySearch.call([5], 5) == 0
  end
end
