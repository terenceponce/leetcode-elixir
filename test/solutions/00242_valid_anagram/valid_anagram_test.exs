defmodule LeetCodePractice.Solutions.ValidAnagramTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.ValidAnagram

  test "Case 1 works" do
    assert ValidAnagram.call("anagram", "nagaram") == true
  end

  test "Case 2 works" do
    assert ValidAnagram.call("rat", "car") == false
  end
end
