defmodule GuardClauses.EvenOrOdd do
  def odd_or_even(number) when Integer.is_even(number), do: "even"
  def odd_or_even(number) when Integer.is_odd(number), do: "odd"

end
