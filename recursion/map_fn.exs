defmodule MapFunction do
  def map([], _func), do: []
  def map([head | tail]), do: [func(head) | map(tail, func)]

end

#Executing the file on the terminal
MapFunction.map [1, 2, 3, 4], fn n -> n * n end #MyList.map [1, 2, 3, 4], &(&1 * &1)
# [1, 4, 9, 16]
MapFunction.map [1, 2, 3, 4], fn n -> n + 1 end #MyList.map [1,2,3,4], &(&1 + 1)
# [2, 3, ,4 ,5]
MapFunction.map [1, 2, 3, 4], fn n -> n > 2 end #MyList.map [1,2,3,4], &(&1 > 2)
# [false, false, true, true]
