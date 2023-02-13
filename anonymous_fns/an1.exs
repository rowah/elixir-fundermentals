#Function returning another function
outer_fn = fn -> fn -> IO.puts "Hello" end end

# can be called as
outer_fn.().()

#Or bind it to a variable
other_fn = outer_fn.()

other_fn.()


greeter = fn name -> (fn -> IO.puts "Hello, #{name}" end) end
greeter.("Dave").() #Hello, Dave
dave_greeter = greeter.("Dave")
dave_greeter.() #Hello, Dave


# Write a function prefix that takes a string. It should return a new function that takes a second string. When that second function is called, it will return a string containing the first string, a space, and the second string.

string_one = fn str -> (fn another_str -> IO.puts "#{str} #{another_str}" end) end
string_two = string_one.("James")
string_two.("Rowa") # James Rowa


#Passing Functions as Arguments

times_two = fn n -> n * 2 end
fun_returner = fn (times_two, value) -> times_two.(value) end

IO.puts fun_returner.(times_two, 21)

list = [1, 2, 3, 4, 5]
IO.puts Enum.map list, fn elem -> elem * 2 end
