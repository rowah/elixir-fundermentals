#➤ Exercise: Functions-1
#Go into IEx. Create and run the functions that do the following:
#– list_concat.([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]
#– sum.(1, 2, 3) #=> 6
#– pair_tuple_to_list.( { 1234, 5678 } ) #=> [ 1234, 5678 ]

iex(8)> list_concat = fn [a, b], [c, d] -> [a, b, c, d] end
#Function<43.97283095/2 in :erl_eval.expr/5>
iex(9)> list_concat.([:a, :b], [:c, :d])
[:a, :b, :c, :d]

list_concat = fn (a, b), (c, d) -> IO.puts [a, b, c, d] end

def concat_lists(list1, list2) do
  list1 ++ list2
end


iex(10)> medi = fn (a, b, c) -> a + b + c end;
#Function<42.97283095/3 in :erl_eval.expr/5>
iex(11)> medi.(1, 2, 3)
6

def sum (a, b, c) do
  a + b + c
end
iex(12)> pair_tuple_to_list = fn {a, b} -> [a, b] end;
#Function<44.97283095/1 in :erl_eval.expr/5>
iex(13)> pair_tuple_to_list.({1234, 5678})
[1234, 5678]




iex(1)> handle_file = fn
  ...(1)> {:ok, file} -> "Read data: #{IO.read(file, :line)}"
  ...(1)> {_, error} -> "Error: #{:file.format_error(error)}"
  ...(1)> end
  #Function<44.97283095/1 in :erl_eval.expr/5>
  iex(2)> handle_open.(File.open("elixir-fundermentals/codewars/war001.exs"))
  ** (CompileError) iex:2: undefined function handle_open/0
      (stdlib 3.13) lists.erl:1354: :lists.mapfoldl/3
  iex(2)> handle_file.(File.open("elixir-fundermentals/codewars/war001.exs"))
  "Error: no such file or directory"
  iex(3)> handle_file.(File.open("codewars/war001.exs"))
  "Read data: # Create a function that takes an integer as an argument and returns \"Even\" for even numbers or \"Odd\" for odd numbers.\n"
  iex(4)>
