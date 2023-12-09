defmodule LeetCodePractice.Solutions.SubtreeOfAnotherTreeTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Provisions.TreeNode
  alias LeetCodePractice.Solutions.SubtreeOfAnotherTree

  test "Case 1 works" do
    root = %TreeNode{
      val: 3,
      left: %TreeNode{
        val: 4,
        left: %TreeNode{
          val: 1,
          left: nil,
          right: nil
        },
        right: %TreeNode{
          val: 2,
          left: nil,
          right: nil
        }
      },
      right: %TreeNode{
        val: 5,
        left: nil,
        right: nil
      }
    }

    sub_root = %TreeNode{
      val: 4,
      left: %TreeNode{
        val: 1,
        left: nil,
        right: nil
      },
      right: %TreeNode{
        val: 2,
        left: nil,
        right: nil
      }
    }

    assert SubtreeOfAnotherTree.call(root, sub_root) == true
  end

  test "Case 2 works" do
    root = %TreeNode{
      val: 3,
      left: %TreeNode{
        val: 4,
        left: %TreeNode{
          val: 1,
          left: nil,
          right: nil
        },
        right: %TreeNode{
          val: 2,
          left: %TreeNode{
            val: 0,
            left: nil,
            right: nil
          },
          right: nil
        }
      },
      right: %TreeNode{
        val: 5,
        left: nil,
        right: nil
      }
    }

    sub_root = %TreeNode{
      val: 4,
      left: %TreeNode{
        val: 1,
        left: nil,
        right: nil
      },
      right: %TreeNode{
        val: 2,
        left: nil,
        right: nil
      }
    }

    assert SubtreeOfAnotherTree.call(root, sub_root) == false
  end

  test "Extra case for 100% test coverage" do
    assert SubtreeOfAnotherTree.call(nil, nil) == true
  end
end
