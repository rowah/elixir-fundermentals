#1... Create an expression that solves the following problem: Sarah has bought ten slices of bread for ten cents each, three bottles of milk for two dollars each, and a cake for fifteen dollars. How many dollars has Sarah spent?

  defmodule Chapt2.Solutions do
    def total_price(no_of_slices, no_of_bottles, no_of_cakes) do
      no_of_slices * 0.10 + no_of_bottles * 2.00 + no_of_cakes * 15
    end

  end

  IO. puts Chapt2.Solutions.total_price(10, 3, 1)



#2... Bob has traveled 200 km in four hours. Using variables, print a message showing his travel distance, time, and average velocity.

distance = 200  # kilometers
time = 4  # hours

# Calculate average velocity
average_velocity = distance / time

# Print message
IO.puts "Bob traveled #{distance} kilometers in #{time} hours, with an average velocity of #{average_velocity} kilometers per hour."

#3....Build an anonymous function that applies a tax of 12% to a given price. It should print a message with the new price and tax value. Bind the anonymous function to a variable called apply_tax. You should use apply_tax with Enum.each/2, like in the following example. Don’t worry about Enum.each/2 now; you’ll see it in detail in Chapter 5, Using Higher-Order Functions, on page 81. You only need to know that Enum.each/2 will execute apply_tax in each item of a list.
# Enum.each [12.5, 30.99, 250.49, 18.80], apply_tax
# Price: 14.0 - Tax: 1.5
# Price: 34.7088 - Tax: 3.7188
# Price: 280.5488 - Tax: 30.0588
# Price: 21.056 - Tax: 2.256

# apply_tax = fn price -> price + (price * 0.12) end
# IO.puts apply_tax.(12.5)
# IO.puts Enum.each([12.5, 30.99, 250.49, 18.80], apply_tax)

# Define anonymous function to apply tax
apply_tax = fn price ->
  tax = price * 0.12
  new_price = price + tax
  IO.puts "Price: #{price}, Tax: #{tax}, New Price: #{new_price}"
end

# Apply apply_tax to list of prices using Enum.each
Enum.each([12.5, 30.99, 250.49, 18.80], apply_tax)
