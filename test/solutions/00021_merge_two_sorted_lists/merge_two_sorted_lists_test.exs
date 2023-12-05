defmodule LeetCodePractice.Solutions.MergeTwoSortedListsTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Provisions.ListNode
  alias LeetCodePractice.Solutions.MergeTwoSortedLists

  test "Case 1 works" do
    l1 = %ListNode{
      val: 1,
      next: %ListNode{
        val: 2,
        next: %ListNode{
          val: 4,
          next: nil
        }
      }
    }

    l2 = %ListNode{
      val: 1,
      next: %ListNode{
        val: 3,
        next: %ListNode{
          val: 4,
          next: nil
        }
      }
    }

    expected_result = %ListNode{
      val: 1,
      next: %ListNode{
        val: 1,
        next: %ListNode{
          val: 2,
          next: %ListNode{
            val: 3,
            next: %ListNode{
              val: 4,
              next: %ListNode{
                val: 4,
                next: nil
              }
            }
          }
        }
      }
    }

    assert MergeTwoSortedLists.call(l1, l2) == expected_result
  end

  test "Case 2 works" do
    assert MergeTwoSortedLists.call(nil, nil) == nil
  end

  test "Case 3 works" do
    assert MergeTwoSortedLists.call(nil, %ListNode{val: 0, next: nil}) == %ListNode{
             val: 0,
             next: nil
           }
  end

  test "with l1 having more nodes works" do
    l1 = %ListNode{
      val: 1,
      next: %ListNode{
        val: 3,
        next: %ListNode{
          val: 4,
          next: %ListNode{
            val: 5,
            next: nil
          }
        }
      }
    }

    l2 = %ListNode{
      val: 1,
      next: %ListNode{
        val: 2,
        next: %ListNode{
          val: 4,
          next: nil
        }
      }
    }

    expected_result = %ListNode{
      val: 1,
      next: %ListNode{
        val: 1,
        next: %ListNode{
          val: 2,
          next: %ListNode{
            val: 3,
            next: %ListNode{
              val: 4,
              next: %ListNode{
                val: 4,
                next: %ListNode{
                  val: 4,
                  next: nil
                }
              }
            }
          }
        }
      }
    }

    assert MergeTwoSortedLists.call(l1, l2) == expected_result
  end
end
