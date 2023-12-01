defmodule LeetCodePractice.Solutions.AddTwoNumbers do
  @moduledoc """
  You are given two non-empty linked lists representing two non-negative integers.
  The digits are stored in reverse order, and each of their nodes contains a single digit.
  Add the two numbers and return the sum as a linked list.

  You may assume the two numbers do not contain any leading zero, except the number 0 itself.

  Link: https://leetcode.com/problems/add-two-numbers/
  """

  alias LeetCodePractice.Provisions.ListNode

  @spec call(ListNode.t() | nil, ListNode.t() | nil) :: ListNode.t() | nil
  def call(l1, l2) do
    add_two_numbers(l1, l2, 0)
  end

  defp add_two_numbers(nil, nil, 0), do: nil

  defp add_two_numbers(nil, nil, 1) do
    %ListNode{val: 1, next: nil}
  end

  defp add_two_numbers(l1, nil, carry) do
    sum = l1.val + carry

    %ListNode{
      val: rem(sum, 10),
      next: add_two_numbers(l1.next, nil, div(sum, 10))
    }
  end

  defp add_two_numbers(nil, l2, carry) do
    sum = l2.val + carry

    %ListNode{
      val: rem(sum, 10),
      next: add_two_numbers(nil, l2.next, div(sum, 10))
    }
  end

  defp add_two_numbers(l1, l2, carry) do
    sum = l1.val + l2.val + carry

    %ListNode{
      val: rem(sum, 10),
      next: add_two_numbers(l1.next, l2.next, div(sum, 10))
    }
  end
end
