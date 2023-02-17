# create a simple program that, given two numbers, will say which one is greater. If the numbers are equal, we can show either one of them

#create module
defmodule NumberCompare do
  #create a function
  def greater(number, other_number) do
    #auxiliary function
    check(number >= other_number, number, other_number)
  end
  #created two versions of check, each one to handle a possibility of the Boolean result
  defp check(true, number, _), do: number
  defp check(false, _, other_number), do: other_number

end
IO.puts NumberCompare.greater(8, 6)
