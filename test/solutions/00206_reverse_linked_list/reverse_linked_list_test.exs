defmodule LeetCodePractice.Solutions.ReverseLinkedListTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Provisions.ListNode
  alias LeetCodePractice.Solutions.ReverseLinkedList

  test "Case 1 works" do
    head = %ListNode{
      val: 1,
      next: %ListNode{
        val: 2,
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
    }

    expected_result = %ListNode{
      val: 5,
      next: %ListNode{
        val: 4,
        next: %ListNode{
          val: 3,
          next: %ListNode{
            val: 2,
            next: %ListNode{
              val: 1,
              next: nil
            }
          }
        }
      }
    }

    assert ReverseLinkedList.call(head) == expected_result
  end

  test "Case 2 works" do
    head = %ListNode{
      val: 1,
      next: %ListNode{
        val: 2,
        next: nil
      }
    }

    expected_result = %ListNode{
      val: 2,
      next: %ListNode{
        val: 1,
        next: nil
      }
    }

    assert ReverseLinkedList.call(head) == expected_result
  end

  test "Case 3 works" do
    assert ReverseLinkedList.call(nil) == nil
  end
end
