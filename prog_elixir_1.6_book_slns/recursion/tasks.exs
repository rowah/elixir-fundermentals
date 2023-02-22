#1. Write a mapsum function that takes a list and a function. It applies the function to each element of the list and then sums the result, so
# iex> MyList.mapsum [1, 2, 3], &(&1 * &1)
# 14
defmodule MapSum do
  def reduce([], value, _func), do: value
  def reduce([head | tail], value, func), do: reduce(tail, func.(head, value), func)

end

defmodule MyList do
  func = fn x -> x * x end
  def mapsum(list, func) do
    list
    |> Enum.map(func)
    |> Enum.sum()
  end

end
#iex> MyList.mapsum([1, 2, 3], func)
#14

#2.Write a max(list) that returns the element with the maximum value in the list. (This is slightly trickier than it sounds.)

#In the reduce function, x represents the current element of the list, and acc represents the current maximum value that we've seen so far. We compare x to acc and return the larger of the two.
def max(list), do
  Enum.reduce(list, fn x, current_max -> if x > current, do: x, else: current_max)

end

#iex> max([5, 2, 7, 1, 9, 3])
#9
#3. An Elixir single-quoted string is actually a list of individual character codes. Write a caesar(list, n) function that adds n to each list element, wrapping if the addition results in a character greater than z.
# iex> MyList.caesar('ryvkve', 13)
# ?????? :)
