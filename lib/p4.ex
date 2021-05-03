defmodule P4 do
  def solve() do
    largest_palindrome_product(999)
  end

  def largest_palindrome_product(below) do
    1..below
    |> Enum.map(fn n -> 1..below |> Enum.map(fn m -> n * m end) end)
    |> Enum.concat()
    |> Enum.filter(&is_palindrome(&1))
    |> Enum.max()
  end

  def largest_palindrome_product_comp(below) do
    palindromes = for n <- 1..below, m <- 1..below, k = n * m, is_palindrome(k), do: k
    Enum.max(palindromes)
  end

  def is_palindrome(n) do
    as_string = Integer.to_string(n)
    reversed = String.reverse(as_string)

    as_string === reversed
  end
end
