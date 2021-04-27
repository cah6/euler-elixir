defmodule P3 do
  def solve() do
    [head | _tail] = prime_factors(600_851_475_143)
    head
  end

  def prime_factors(n) do
    prime_factors([], primes(n), n)
    |> Enum.reverse()
  end

  def prime_factors(acc, [], _n) do
    acc
  end

  def prime_factors(acc, [p | primes], n) do
    cond do
      n == p -> [p | acc]
      rem(n, p) == 0 -> prime_factors([p | acc], [p | primes], div(n, p))
      true -> prime_factors(acc, primes, n)
    end
  end

  def primes(until) do
    primes([], Enum.to_list(2..until))
    |> Enum.reverse()
  end

  def primes(acc, []) do
    acc
  end

  def primes(acc, [next_prime | candidates]) do
    primes([next_prime | acc], Enum.filter(candidates, &(rem(&1, next_prime) != 0)))
  end

  def is_prime(primes, n) do
    Enum.all?(primes, &(rem(n, &1) != 0))
  end
end
