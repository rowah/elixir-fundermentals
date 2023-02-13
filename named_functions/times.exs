# # defmodule Times do
# #   def triple(n) do
# #     n * 3
# #   end

# # end



# #can be written as
# defmodule Times do
#   def triple(n) do: n * 3

# end


# #OR
# # defmodule Times, do: (def triple(n), do: n * 3)

defmodule Times do
  def double(n) do
    n * 2
  end

end

defmodule Quadruple do
  def double_square(n) do
    Times.double(n) * 2
  end

end
