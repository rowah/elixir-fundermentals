#Function returning another function
outer_fn = fn -> fn -> IO.puts "Hello" end end

# can be called as
outer_fn.().()

#Or bind it to a variable
other_fn = outer_fn.()

other_fn.()
