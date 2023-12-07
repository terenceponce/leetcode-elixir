defmodule LeetCodePractice.Solutions.DiameterOfBinaryTreeTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Provisions.TreeNode
  alias LeetCodePractice.Solutions.DiameterOfBinaryTree

  test "Case 1 works" do
    root = %TreeNode{
      val: 1,
      left: %TreeNode{
        val: 2,
        left: %TreeNode{
          val: 4,
          left: nil,
          right: nil
        },
        right: %TreeNode{
          val: 5,
          left: nil,
          right: nil
        }
      },
      right: %TreeNode{
        val: 3,
        left: nil,
        right: nil
      }
    }

    assert DiameterOfBinaryTree.call(root) == 3
  end

  test "Case 2 works" do
    root = %TreeNode{
      val: 1,
      left: %TreeNode{
        val: 2,
        left: nil,
        right: nil
      },
      right: nil
    }

    assert DiameterOfBinaryTree.call(root) == 1
  end

  test "NeetCode's example works" do
    root = %TreeNode{
      val: 1,
      left: %TreeNode{
        val: 2,
        left: %TreeNode{
          val: 3,
          left: %TreeNode{
            val: 5,
            left: nil,
            right: nil
          },
          right: nil
        },
        right: %TreeNode{
          val: 4,
          left: nil,
          right: %TreeNode{
            val: 6,
            left: nil,
            right: nil
          }
        }
      },
      right: nil
    }

    assert DiameterOfBinaryTree.call(root) == 4
  end
end
