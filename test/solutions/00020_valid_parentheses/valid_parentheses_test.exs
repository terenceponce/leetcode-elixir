defmodule LeetCodePractice.Solutions.ValidParenthesesTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.ValidParentheses

  test "Case 1 works" do
    assert ValidParentheses.call("()") == true
  end

  test "Case 2 works" do
    assert ValidParentheses.call("()[]{}") == true
  end

  test "Case 3 works" do
    assert ValidParentheses.call("(]") == false
  end

  test "Nested parentheses work" do
    assert ValidParentheses.call("([{}])") == true
  end
end
