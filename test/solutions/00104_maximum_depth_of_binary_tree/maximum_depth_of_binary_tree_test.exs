defmodule LeetCodePractice.Solutions.MaximumDepthOfBinaryTreeTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Provisions.TreeNode
  alias LeetCodePractice.Solutions.MaximumDepthOfBinaryTree

  test "Case 1 works" do
    root = %TreeNode{
      val: 3,
      left: %TreeNode{
        val: 9,
        left: nil,
        right: nil
      },
      right: %TreeNode{
        val: 20,
        left: %TreeNode{
          val: 15,
          left: nil,
          right: nil
        },
        right: %TreeNode{
          val: 7,
          left: nil,
          right: nil
        }
      }
    }

    assert MaximumDepthOfBinaryTree.call(root) == 3
  end

  test "Case 2 works" do
    root = %TreeNode{
      val: 1,
      left: nil,
      right: %TreeNode{
        val: 2,
        left: nil,
        right: nil
      }
    }

    assert MaximumDepthOfBinaryTree.call(root) == 2
  end
end
