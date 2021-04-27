defmodule P2 do
  def solve() do
    P2.fib_below(4_000_000)
    |> Enum.filter(&(rem(&1, 2) == 0))
    |> Enum.sum()
  end

  def fib_below(n) do
    fib([2, 1], 1, 2, n)
  end

  def fib(acc, n1, n2, stop_at) do
    next = n1 + n2

    if next > stop_at do
      acc
    else
      fib([next | acc], n2, next, stop_at)
    end
  end
end
