defmodule P3Test do
  use ExUnit.Case

  test "P3" do
    assert P3.prime_factors(13195) == [5, 7, 13, 29]
  end
end
