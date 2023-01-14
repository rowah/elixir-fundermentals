
# define first module with a function that calculates the total cost of a product given its tax rate
defmodule Checkout do
  def total_cost(price, tax_rate) do
    price * (tax_rate + 1)
  end

end


#OR define a function in a single line by using do optional syntax,
defmodule Checkout2 do
  def total_cost2(price, tax_rate), do: price * (tax_rate + 1)

  end
end

# trying out module using IEx
#iex(1)> c("checkout.ex") The c function compiles the given file and provides the Checkout module to the current IEx session
#iex> Checkout.total_cost(100, 0.2) 120.0
