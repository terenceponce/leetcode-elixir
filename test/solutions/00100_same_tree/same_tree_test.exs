defmodule LeetCodePractice.Solutions.SameTreeTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Provisions.TreeNode
  alias LeetCodePractice.Solutions.SameTree

  test "Case 1 works" do
    p = %TreeNode{
      val: 1,
      left: %TreeNode{
        val: 2,
        left: nil,
        right: nil
      },
      right: %TreeNode{
        val: 3,
        left: nil,
        right: nil
      }
    }

    q = %TreeNode{
      val: 1,
      left: %TreeNode{
        val: 2,
        left: nil,
        right: nil
      },
      right: %TreeNode{
        val: 3,
        left: nil,
        right: nil
      }
    }

    assert SameTree.call(p, q) == true
  end

  test "Case 2 works" do
    p = %TreeNode{
      val: 1,
      left: %TreeNode{
        val: 2,
        left: nil,
        right: nil
      },
      right: nil
    }

    q = %TreeNode{
      val: 1,
      left: nil,
      right: %TreeNode{
        val: 2,
        left: nil,
        right: nil
      }
    }

    assert SameTree.call(p, q) == false
  end

  test "Case 3 works" do
    p = %TreeNode{
      val: 1,
      left: %TreeNode{
        val: 2,
        left: nil,
        right: nil
      },
      right: %TreeNode{
        val: 1,
        left: nil,
        right: nil
      }
    }

    q = %TreeNode{
      val: 1,
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

    assert SameTree.call(p, q) == false
  end
end
