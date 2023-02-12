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
