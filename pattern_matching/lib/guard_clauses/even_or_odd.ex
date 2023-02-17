defmodule GuardClauses.EvenOrOdd do
  require Integer
  def odd_or_even(number) when Integer.is_even(number), do: "even"
  def odd_or_even(number) when Integer.is_odd(number), do: "odd"

end

IO.puts GuardClauses.EvenOrOdd.odd_or_even(11)
IO.puts GuardClauses.EvenOrOdd.odd_or_even(12)
