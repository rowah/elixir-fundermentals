# Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

defmodule Codewars do
  def even_or_odd(number) do
    if rem(number,2) == 0, do: "Even", else: "Odd"
  end
end
