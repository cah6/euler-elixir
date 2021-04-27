defmodule P1Test do
  use ExUnit.Case

  test "P1" do
    assert P1.multiples_of(3, 5, 10) == [3, 5, 6, 9]
    assert Enum.sum(P1.multiples_of(3, 5, 10)) == 23
  end
end
