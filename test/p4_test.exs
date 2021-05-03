defmodule P4Test do
  use ExUnit.Case

  test "P4" do
    assert P4.largest_palindrome_product(99) == 9009
  end
end
