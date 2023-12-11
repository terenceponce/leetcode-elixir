defmodule LeetCodePractice.Solutions.NumberOfGoodPairsTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.NumberOfGoodPairs

  test "Case 1 works" do
    assert NumberOfGoodPairs.call([1, 2, 3, 1, 1, 3]) == 4
  end

  test "Case 2 works" do
    assert NumberOfGoodPairs.call([1, 1, 1, 1]) == 6
  end

  test "Case 3 works" do
    assert NumberOfGoodPairs.call([1, 2, 3]) == 0
  end
end
