defmodule LeetCodePractice.Solutions.RomanToIntegerTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.RomanToInteger

  test "Case 1 works" do
    assert RomanToInteger.call("III") == 3
  end

  test "Case 2 works" do
    assert RomanToInteger.call("LVIII") == 58
  end

  test "Case 3 works" do
    assert RomanToInteger.call("MCMXCIV") == 1994
  end

  test "Additional test case to cover every roman numeral" do
    assert RomanToInteger.call("MCDLXXVI") == 1476
  end
end
