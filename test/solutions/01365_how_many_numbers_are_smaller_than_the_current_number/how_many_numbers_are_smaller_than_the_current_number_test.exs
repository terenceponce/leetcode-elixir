defmodule LeetCodePractice.Solutions.HowManyNumbersAreSmallerThanTheCurrentNumberTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.HowManyNumbersAreSmallerThanTheCurrentNumber

  test "Case 1 works" do
    nums = [8, 1, 2, 2, 3]
    expected_output = [4, 0, 1, 1, 3]

    assert HowManyNumbersAreSmallerThanTheCurrentNumber.call(nums) == expected_output
  end

  test "Case 2 works" do
    nums = [6, 5, 4, 8]
    expected_output = [2, 1, 0, 3]

    assert HowManyNumbersAreSmallerThanTheCurrentNumber.call(nums) == expected_output
  end

  test "Case 3 works" do
    nums = [7, 7, 7, 7]
    expected_output = [0, 0, 0, 0]

    assert HowManyNumbersAreSmallerThanTheCurrentNumber.call(nums) == expected_output
  end
end
