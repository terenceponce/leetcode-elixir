defmodule LeetCodePractice.Solutions.InvertBinaryTree do
  @moduledoc """
  Given the root of a binary tree, invert the tree, and return its root.
  """

  alias LeetCodePractice.Provisions.TreeNode

  @spec call(root :: TreeNode.t() | nil) :: TreeNode.t() | nil
  def call(root) do
    do_invert_tree(root)
  end

  defp do_invert_tree(nil), do: nil

  defp do_invert_tree(%TreeNode{left: left, right: right} = root) do
    %{root | left: do_invert_tree(right), right: do_invert_tree(left)}
  end
end
