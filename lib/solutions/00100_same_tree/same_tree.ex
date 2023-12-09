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

  defp do_is_same_tree(%TreeNode{val: p_val, left: p_left, right: p_right}, %TreeNode{
         val: q_val,
         left: q_left,
         right: q_right
       }) do
    if p_val == q_val do
      do_is_same_tree(p_left, q_left) && do_is_same_tree(p_right, q_right)
    else
      false
    end
  end

  defp do_is_same_tree(nil, nil), do: true
  defp do_is_same_tree(_, _), do: false
end
