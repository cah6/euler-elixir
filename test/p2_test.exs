defmodule P2Test do
  use ExUnit.Case

  test "P2" do
    assert P2.fib_below(10) == [8, 5, 3, 2, 1]
  end
end
