defmodule P1 do
  def solve() do
    multiples_of(3, 5, 1000)
    |> Enum.sum()
  end

  def multiples_of(n1, n2, below) do
    multiples_of([], n1, n2, below - 1)
  end

  def multiples_of(acc, _n1, _n2, 1) do
    acc
  end

  def multiples_of(acc, n1, n2, below) do
    if rem(below, n1) == 0 || rem(below, n2) == 0 do
      multiples_of([below | acc], n1, n2, below - 1)
    else
      multiples_of(acc, n1, n2, below - 1)
    end
  end
end
