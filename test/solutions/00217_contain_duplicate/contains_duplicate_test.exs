defmodule LeetCodePractice.Solutions.ContainsDuplicateTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.ContainsDuplicate

  test "Case 1 works" do
    assert ContainsDuplicate.call([1, 2, 3, 1]) == true
  end

  test "Case 2 works" do
    assert ContainsDuplicate.call([1, 2, 3, 4]) == false
  end

  test "Case 3 works" do
    assert ContainsDuplicate.call([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]) == true
  end
end
