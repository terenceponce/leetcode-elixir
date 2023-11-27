defmodule LeetCodePracticeTest do
  use ExUnit.Case
  doctest LeetCodePractice

  test "greets the world" do
    assert LeetCodePractice.hello() == :world
  end
end
