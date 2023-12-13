defmodule LeetCodePractice.Solutions.MajorityElementTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.MajorityElement

  test "Case 1 works" do
    assert MajorityElement.call([3, 2, 3]) == 3
  end

  test "Case 2 works" do
    assert MajorityElement.call([2, 2, 1, 1, 1, 2, 2]) == 2
  end
end
