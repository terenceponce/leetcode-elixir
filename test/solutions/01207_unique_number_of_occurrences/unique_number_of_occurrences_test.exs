defmodule LeetCodePractice.Solutions.UniqueNumberOfOccurrencesTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.UniqueNumberOfOccurrences

  test "Case 1 works" do
    assert UniqueNumberOfOccurrences.call([1, 2, 2, 1, 1, 3]) == true
  end

  test "Case 2 works" do
    assert UniqueNumberOfOccurrences.call([1, 2]) == false
  end

  test "Case 3 works" do
    assert UniqueNumberOfOccurrences.call([-3, 0, 1, -3, 1, 1, 1, -3, 10, 0]) == true
  end
end
