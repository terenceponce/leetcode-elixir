defmodule LeetCodePractice.Solutions.AddTwoNumbersTest do
  use ExUnit.Case, async: true

  alias LeetCodePractice.Provisions.ListNode
  alias LeetCodePractice.Solutions.AddTwoNumbers

  test "Case 1 works" do
    l1 = %ListNode{
      val: 2,
      next: %ListNode{
        val: 4,
        next: %ListNode{
          val: 3,
          next: nil
        }
      }
    }

    l2 = %ListNode{
      val: 5,
      next: %ListNode{
        val: 6,
        next: %ListNode{
          val: 4,
          next: nil
        }
      }
    }

    expected_result = %ListNode{
      val: 7,
      next: %ListNode{
        val: 0,
        next: %ListNode{
          val: 8,
          next: nil
        }
      }
    }

    assert AddTwoNumbers.call(l1, l2) == expected_result
  end

  test "Case 2 works" do
    l1 = %ListNode{val: 0}
    l2 = %ListNode{val: 0}

    expected_result = %ListNode{val: 0}

    assert AddTwoNumbers.call(l1, l2) == expected_result
  end

  test "Case 3 works" do
    l1 = %ListNode{
      val: 9,
      next: %ListNode{
        val: 9,
        next: %ListNode{
          val: 9,
          next: %ListNode{
            val: 9,
            next: %ListNode{
              val: 9,
              next: %ListNode{
                val: 9,
                next: %ListNode{
                  val: 9,
                  next: nil
                }
              }
            }
          }
        }
      }
    }

    l2 = %ListNode{
      val: 9,
      next: %ListNode{
        val: 9,
        next: %ListNode{
          val: 9,
          next: %ListNode{
            val: 9,
            next: nil
          }
        }
      }
    }

    expected_result = %ListNode{
      val: 8,
      next: %ListNode{
        val: 9,
        next: %ListNode{
          val: 9,
          next: %ListNode{
            val: 9,
            next: %ListNode{
              val: 0,
              next: %ListNode{
                val: 0,
                next: %ListNode{
                  val: 0,
                  next: %ListNode{
                    val: 1,
                    next: nil
                  }
                }
              }
            }
          }
        }
      }
    }

    assert AddTwoNumbers.call(l1, l2) == expected_result
  end

  test "Additional test case for 100% test coverage" do
    l1 = %ListNode{
      val: 9,
      next: %ListNode{
        val: 9,
        next: %ListNode{
          val: 9,
          next: %ListNode{
            val: 9,
            next: nil
          }
        }
      }
    }

    l2 = %ListNode{
      val: 9,
      next: %ListNode{
        val: 9,
        next: %ListNode{
          val: 9,
          next: %ListNode{
            val: 9,
            next: %ListNode{
              val: 9,
              next: %ListNode{
                val: 9,
                next: %ListNode{
                  val: 9,
                  next: nil
                }
              }
            }
          }
        }
      }
    }

    expected_result = %ListNode{
      val: 8,
      next: %ListNode{
        val: 9,
        next: %ListNode{
          val: 9,
          next: %ListNode{
            val: 9,
            next: %ListNode{
              val: 0,
              next: %ListNode{
                val: 0,
                next: %ListNode{
                  val: 0,
                  next: %ListNode{
                    val: 1,
                    next: nil
                  }
                }
              }
            }
          }
        }
      }
    }

    assert AddTwoNumbers.call(l1, l2) == expected_result
  end
end
