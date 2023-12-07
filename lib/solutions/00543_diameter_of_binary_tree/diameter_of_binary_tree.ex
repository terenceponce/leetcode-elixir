defmodule LeetCodePractice.Solutions.DiameterOfBinaryTree do
  @moduledoc """
  Given the root of a binary tree, return the length of the diameter of the tree.

  The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.

  The length of a path between two nodes is represented by the number of edges between them.
  """

  alias LeetCodePractice.Provisions.TreeNode

  @spec call(root :: TreeNode.t() | nil) :: integer
  def call(root) do
    root
    |> do_diameter_of_binary_tree(0, 0)
    |> elem(0)
  end

  defp do_diameter_of_binary_tree(nil, diameter, height), do: {diameter, height}

  defp do_diameter_of_binary_tree(root, diameter, height) do
    {left_diameter, left_height} = do_diameter_of_binary_tree(root.left, diameter, height)
    {right_diameter, right_height} = do_diameter_of_binary_tree(root.right, diameter, height)

    new_diameter = Enum.max([left_height + right_height, left_diameter, right_diameter])
    new_height = 1 + max(left_height, right_height)

    {new_diameter, new_height}
  end
end
