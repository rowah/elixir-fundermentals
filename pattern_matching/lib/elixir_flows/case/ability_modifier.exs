#case to handle two scenarios: one in which the user input is a valid number, and the other in which the user provides invalid information
# user_input = IO.gets "What is your ability score? \n"
# case Integer.parse(user_input) do
#   :error -> IO.puts "Invalid ability score: #{user_input}"
#   {ability_score, _} ->
#     ability_modifier = (ability_score - 10) / 2
#     IO.puts "Your ability score is #{ability_modifier}"
# end


user_input = IO.gets "Write your ability score: \n"
result = case Integer.parse(user_input) do
  :error ->
    "Invalid ability score: #{user_input}"
  {ability_score, _} when ability_score >= 0 ->
      ability_modifier = (ability_score - 10) / 2
      "Your ability modifier is #{ability_modifier}"
end

IO.puts result
