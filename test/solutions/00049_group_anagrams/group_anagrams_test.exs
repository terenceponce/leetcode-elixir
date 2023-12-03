defmodule LeetCodePractice.Solutions.GroupAnagramsTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.GroupAnagrams

  test "Case 1 works" do
    input = ["eat", "tea", "tan", "ate", "nat", "bat"]
    expected_output = [["bat"], ["eat", "tea", "ate"], ["tan", "nat"]]

    assert GroupAnagrams.call(input) == expected_output
  end

  test "Case 2 works" do
    input = [""]
    expected_output = [[""]]

    assert GroupAnagrams.call(input) == expected_output
  end

  test "Case 3 works" do
    input = ["a"]
    expected_output = [["a"]]

    assert GroupAnagrams.call(input) == expected_output
  end
end
