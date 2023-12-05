defmodule LeetCodePractice.Solutions.MaximumDepthOfBinaryTree do
  @moduledoc """
  Given the root of a binary tree, return its maximum depth.

  A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
  """

  alias LeetCodePractice.Provisions.TreeNode

  @spec call(root :: TreeNode.t() | nil) :: integer
  def call(root) do
    do_max_depth(0, 1, root)
  end

  defp do_max_depth(answer, _, nil), do: answer

  defp do_max_depth(answer, depth, node) do
    answer
    |> max(depth)
    |> do_max_depth(depth + 1, node.left)
    |> do_max_depth(depth + 1, node.right)
  end
end
