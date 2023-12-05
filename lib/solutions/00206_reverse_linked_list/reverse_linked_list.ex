defmodule LeetCodePractice.Solutions.ReverseLinkedList do
  @moduledoc """
  Given the head of a singly linked list, reverse the list, and return the reversed list.
  """

  alias LeetCodePractice.Provisions.ListNode

  @spec call(head :: ListNode.t() | nil) :: ListNode.t() | nil
  def call(head) do
    do_reverse_list(head, nil)
  end

  defp do_reverse_list(nil, new), do: new

  defp do_reverse_list(old, new) do
    do_reverse_list(old.next, %ListNode{val: old.val, next: new})
  end
end
