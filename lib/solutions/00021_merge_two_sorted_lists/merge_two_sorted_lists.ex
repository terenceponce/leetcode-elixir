defmodule LeetCodePractice.Solutions.MergeTwoSortedLists do
  @moduledoc """
  You are given the heads of two sorted linked lists list1 and list2.

  Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

  Return the head of the merged linked list.
  """

  alias LeetCodePractice.Provisions.ListNode

  @spec call(list1 :: ListNode.t() | nil, list2 :: ListNode.t() | nil) :: ListNode.t() | nil
  def call(list1, list2) do
    do_merge_two_lists(list1, list2)
  end

  defp do_merge_two_lists(nil, nil), do: nil
  defp do_merge_two_lists(l1, nil), do: l1
  defp do_merge_two_lists(nil, l2), do: l2

  defp do_merge_two_lists(%ListNode{val: val1, next: next1}, %ListNode{val: val2} = l2)
       when val1 <= val2 do
    %ListNode{val: val1, next: do_merge_two_lists(next1, l2)}
  end

  defp do_merge_two_lists(l1, %ListNode{val: val, next: next}) do
    %ListNode{val: val, next: do_merge_two_lists(l1, next)}
  end
end
