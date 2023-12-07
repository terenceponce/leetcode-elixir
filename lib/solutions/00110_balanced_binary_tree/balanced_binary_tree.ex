defmodule LeetCodePractice.Solutions.BalancedBinaryTree do
  @moduledoc """
  Given a binary tree, determine if it is height-balanced.

  A height-balanced binary tree is a binary tree in which the depth of the two subtrees of every node never differs by more than one.
  """

  alias LeetCodePractice.Provisions.TreeNode

  @spec call(root :: TreeNode.t() | nil) :: boolean
  def call(root) do
    match?({:ok, _}, do_is_balanced(root))
  end

  defp do_is_balanced(nil), do: {:ok, 0}

  defp do_is_balanced(root) do
    with {:ok, left_height} <- do_is_balanced(root.left),
         {:ok, right_height} <- do_is_balanced(root.right),
         true <- abs(left_height - right_height) <= 1 do
      {:ok, 1 + max(left_height, right_height)}
    end
  end
end
