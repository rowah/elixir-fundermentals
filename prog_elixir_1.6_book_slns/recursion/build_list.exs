#A module that squares elements in a list
defmodule SquareList do
  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

end
IO.puts SquareList.square([])
IO.puts SquareList.square([4, 5, 6])

#A module that increases list elements by one
defmodule ListIncrement do
  def addOne([]), do: []
  def addOne([head | tail]), do: [head + 1 | addOne(tail)]

end

IO.puts ListIncrement.addOne([])
IO.puts ListIncrement.addOne([1, 2, 3, 4])
