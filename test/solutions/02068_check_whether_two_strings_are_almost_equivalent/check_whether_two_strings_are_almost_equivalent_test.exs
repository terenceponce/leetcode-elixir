defmodule LeetCodePractice.Solutions.CheckWhetherTwoStringsAreAlmostEquivalentTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.CheckWhetherTwoStringsAreAlmostEquivalent

  test "Case 1 works" do
    assert CheckWhetherTwoStringsAreAlmostEquivalent.call("aaaa", "bccb") == false
  end

  test "Case 2 works" do
    assert CheckWhetherTwoStringsAreAlmostEquivalent.call("abcdeef", "abaaacc") == true
  end

  test "Case 3 works" do
    assert CheckWhetherTwoStringsAreAlmostEquivalent.call("cccddabba", "babababab") == true
  end

  test "Case 192 works" do
    assert CheckWhetherTwoStringsAreAlmostEquivalent.call("bccb", "zzzz") == false
  end

  test "Non-equal length is rejected" do
    assert CheckWhetherTwoStringsAreAlmostEquivalent.call("aaaa", "aaaaa") == false
  end
end
