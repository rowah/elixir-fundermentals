user_input = IO.gets "Write your ability score:\n" #prompts user to enter a number
{ability_score, _} = Integer.parse(user_input) #wildcard _ matches everything and is used to ignore some parts of the matching expression
ability_modifier = (ability_score - 10) / 2
IO.puts "Your ability modifier is #{ability_modifier}"

#On the terminal:
# iex(1)> c "ability_modifiers.exs"
# Write your ability score:
# 16
# Your ability modifier is 3.0
# []
# iex(2)>


# error
# iex(2)> c "ability_modifiers.exs"
# Write your ability score:
# hot dogs

# == Compilation error in file ability_modifiers.exs ==
# ** (MatchError) no match of right hand side value: :error
#     ability_modifiers.exs:2: (file)
#     (elixir 1.12.3) lib/kernel/parallel_compiler.ex:320: anonymous fn/4 in Kernel.ParallelCompiler.spawn_workers/7
# ** (CompileError)  compile error
#     (iex 1.12.3) lib/iex/helpers.ex:202: IEx.Helpers.c/2




# The Inte- ger.parse/1 functions return a tuple for a successful parsing. The first element is the parsed value and the second item is the remaining text that wasn’t parsed. When the input can’t be parsed to an integer, the function doesn’t return a tuple; it returns an atom :error.