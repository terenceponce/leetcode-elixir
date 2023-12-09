defmodule LeetCodePractice.Solutions.SameTree do
  @moduledoc """
  Given the roots of two binary trees p and q, write a function to check if they are the same or not.

  Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.
  """

  alias LeetCodePractice.Provisions.TreeNode

  @spec call(p :: TreeNode.t() | nil, q :: TreeNode.t() | nil) :: boolean
  def call(p, q) do
    do_is_same_tree(p, q)
  end

  defp do_is_same_tree(nil, nil), do: true
  defp do_is_same_tree(nil, _), do: false
  defp do_is_same_tree(_, nil), do: false

  defp do_is_same_tree(p, q) do
    if p.val == q.val do
      do_is_same_tree(p.left, q.left) && do_is_same_tree(p.right, q.right)
    else
      false
    end
  end
end
