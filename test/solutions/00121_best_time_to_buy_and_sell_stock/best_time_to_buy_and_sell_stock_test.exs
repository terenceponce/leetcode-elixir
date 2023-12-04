defmodule LeetCodePractice.Solutions.BestTimeToBuyAndSellStockTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Solutions.BestTimeToBuyAndSellStock

  test "Case 1 works" do
    assert BestTimeToBuyAndSellStock.call([7, 1, 5, 3, 6, 4]) == 5
  end

  test "Case 2 works" do
    assert BestTimeToBuyAndSellStock.call([7, 6, 4, 3, 1]) == 0
  end
end
