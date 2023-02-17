# Guard clauses in Elixir are used to define conditions that must be met in order for a function to be executed. A guard clause is an optional expression that can be added to a function definition using the when keyword, and it allows you to restrict the set of input arguments that the function will accept.

defmodule GuardClauses.GClauses do
  def divide(number, other_number) when other_number != 0 do
    number / other_number
  end
end

IO.puts GuardClauses.GClauses.divide(12, 10) #1.2

# add function has two clauses, one for adding integers and one for concatenating lists. Each clause has a guard clause that restricts the types of inputs that are accepted by that clause. When you call the add function with specific arguments, Elixir will automatically match the arguments to the appropriate clause based on the guard clauses.
defmodule Math do
  def add(x, y) when is_integer(x) and is_integer(y) do
    x + y
  end

  def add(x, y) when is_list(x) and is_list(y) do
    x ++ y
  end
end

IO.puts Math.add(10, 12) #22
