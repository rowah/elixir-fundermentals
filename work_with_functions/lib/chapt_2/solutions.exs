# Create an expression that solves the following problem: Sarah has bought ten slices of bread for ten cents each, three bottles of milk for two dollars each, and a cake for fifteen dollars. How many dollars has Sarah spent?

# defmodule Chapt2.Solutions do

#   def total(bread_slices, milk_bottles, cakes) do
#     (bread_slice * 0.10) + (milk_bottle * 2.00) + (cake * 15)
#   end

# end

# Chapt2.Solutions.total(10, 3, 1)

# defmodule Ecommerce.Checkout do
#   def total_cost(price, tax_rate) do
#       price * (tax_rate + 1)
#   end end

  defmodule Chapt2.Solutions do
    def total_price(no_of_slices, no_of_bottles, no_of_cakes) do
      no_of_slices * 0.10 + no_of_bottles * 2.00 + no_of_cakes * 15
    end

  end

  IO. puts Chapt2.Solutions.total_price(10, 3, 1)



# Bob has traveled 200 km in four hours. Using variables, print a message showing his travel distance, time, and average velocity.
