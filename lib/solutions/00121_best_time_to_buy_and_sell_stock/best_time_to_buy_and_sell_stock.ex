defmodule LeetCodePractice.Solutions.BestTimeToBuyAndSellStock do
  @moduledoc """
  You are given an array prices where prices[i] is the price of a given stock on the ith day.

  You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

  Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
  """

  @spec call(prices :: [integer]) :: integer
  def call([min | prices]) do
    prices
    |> Enum.reduce({0, min}, fn price, {profit, buy} ->
      {max(profit, price - buy), min(buy, price)}
    end)
    |> elem(0)
  end
end
