defmodule LeetCodePractice.Solutions.BalancedBinaryTreeTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Provisions.TreeNode
  alias LeetCodePractice.Solutions.BalancedBinaryTree

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

    assert BalancedBinaryTree.call(root) == true
  end

  test "Case 2 works" do
    root = %TreeNode{
      val: 1,
      left: %TreeNode{
        val: 2,
        left: %TreeNode{
          val: 3,
          left: %TreeNode{
            val: 4,
            left: nil,
            right: nil
          },
          right: %TreeNode{
            val: 4,
            left: nil,
            right: nil
          }
        },
        right: %TreeNode{
          val: 3,
          left: nil,
          right: nil
        }
      },
      right: %TreeNode{
        val: 2,
        left: nil,
        right: nil
      }
    }

    assert BalancedBinaryTree.call(root) == false
  end

  test "Case 3 works" do
    assert BalancedBinaryTree.call(nil) == true
  end
end
