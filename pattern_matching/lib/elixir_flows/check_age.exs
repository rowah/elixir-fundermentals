{age, _} =Integer.parse(IO.gets "Please enter your age: \n")
result = cond do
  age < 13 -> "a kid"
  age <= 18 -> "a teen"
  age > 18 -> "an adult"
end

IO.puts "You are #{result}"
