defmodule LeetCodePractice.Provisions.ListNode do
  @moduledoc """
  This is a Linked List Node implementation provided in the following problem:

  https://leetcode.com/problems/add-two-numbers/
  """

  @type t :: %__MODULE__{
          val: integer(),
          next: t() | nil
        }

  defstruct val: 0, next: nil
end
