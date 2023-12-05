defmodule LeetCodePractice.Provisions.TreeNode do
  @moduledoc false

  @type t :: %__MODULE__{
          val: integer(),
          left: t() | nil,
          right: t() | nil
        }

  defstruct val: 0, left: nil, right: nil
end
