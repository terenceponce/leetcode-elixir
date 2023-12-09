defmodule LeetCodePractice.Solutions.SubtreeOfAnotherTree do
  @moduledoc """
  Given the roots of two binary trees root and subRoot, return true if there is a subtree of root
  with the same structure and node values of subRoot and false otherwise.

  A subtree of a binary tree tree is a tree that consists of a node in tree and all of this node's
  descendants. The tree tree could also be considered as a subtree of itself.
  """

  alias LeetCodePractice.Provisions.TreeNode

  @spec call(root :: TreeNode.t() | nil, sub_root :: TreeNode.t() | nil) :: boolean
  def call(root, sub_root) do
    subtree?(root, sub_root)
  end

  defp subtree?(nil, nil), do: true
  defp subtree?(nil, _), do: false

  defp subtree?(root, sub_root) do
    if same_tree?(root, sub_root) do
      true
    else
      subtree?(root.left, sub_root) || subtree?(root.right, sub_root)
    end
  end

  defp same_tree?(%TreeNode{val: p_val, left: p_left, right: p_right}, %TreeNode{
         val: q_val,
         left: q_left,
         right: q_right
       }) do
    if p_val == q_val do
      same_tree?(p_left, q_left) && same_tree?(p_right, q_right)
    else
      false
    end
  end

  defp same_tree?(nil, nil), do: true
  defp same_tree?(_, _), do: false
end
