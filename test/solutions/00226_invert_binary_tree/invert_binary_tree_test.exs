defmodule LeetCodePractice.Solutions.InvertBinaryTreeTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Provisions.TreeNode
  alias LeetCodePractice.Solutions.InvertBinaryTree

  test "Case 1 works" do
    root = %TreeNode{
      val: 4,
      left: %TreeNode{
        val: 2,
        left: %TreeNode{
          val: 1,
          left: nil,
          right: nil
        },
        right: %TreeNode{
          val: 3,
          left: nil,
          right: nil
        }
      },
      right: %TreeNode{
        val: 7,
        left: %TreeNode{
          val: 6,
          left: nil,
          right: nil
        },
        right: %TreeNode{
          val: 9,
          left: nil,
          right: nil
        }
      }
    }

    expected_output = %TreeNode{
      val: 4,
      left: %TreeNode{
        val: 7,
        left: %TreeNode{
          val: 9,
          left: nil,
          right: nil
        },
        right: %TreeNode{
          val: 6,
          left: nil,
          right: nil
        }
      },
      right: %TreeNode{
        val: 2,
        left: %TreeNode{
          val: 3,
          left: nil,
          right: nil
        },
        right: %TreeNode{
          val: 1,
          left: nil,
          right: nil
        }
      }
    }

    assert InvertBinaryTree.call(root) == expected_output
  end

  test "Case 2 works" do
    root = %TreeNode{
      val: 2,
      left: %TreeNode{
        val: 1,
        left: nil,
        right: nil
      },
      right: %TreeNode{
        val: 3,
        left: nil,
        right: nil
      }
    }

    expected_output = %TreeNode{
      val: 2,
      left: %TreeNode{
        val: 3,
        left: nil,
        right: nil
      },
      right: %TreeNode{
        val: 1,
        left: nil,
        right: nil
      }
    }

    assert InvertBinaryTree.call(root) == expected_output
  end

  test "Case 3 works" do
    assert InvertBinaryTree.call(nil) == nil
  end
end
