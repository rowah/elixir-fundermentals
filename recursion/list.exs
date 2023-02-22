defmodule MyLists do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

end
IO.puts MyLists.len([])
IO.puts MyLists.len([1, 2, 3, 4, 5])
