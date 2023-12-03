defmodule LeetCodePractice.Solutions.ValidPalindromeTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.ValidPalindrome

  test "Case 1 works" do
    string = "A man, a plan, a canal: Panama"

    assert ValidPalindrome.call(string) == true
  end

  test "Case 2 works" do
    string = "race a car"

    assert ValidPalindrome.call(string) == false
  end

  test "Case 3 works" do
    string = " "

    assert ValidPalindrome.call(string) == true
  end
end
