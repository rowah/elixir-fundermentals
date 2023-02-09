# Write a function that takes three arguments. If the first two are zero, return “FizzBuzz.” If the first is zero, return “Fizz.” If the second is zero, return “Buzz.” Otherwise return the third argument. Do not use any language features that we haven’t yet covered in this book.

#1. Using Pattern Matching

fizz_buzz_third = fn (0, 0, _c) -> "FizzBuzz"
                  (0, _, _c) -> "Fizz"
                  (_, 0, _c) -> "Buzz"
                  (_, _, c) -> c
end


IO.puts fizz_buzz_third.(0, 0, 4)
IO.puts fizz_buzz_third.(0, 2, 4)
IO.puts fizz_buzz_third.(1, 0, 4)
IO.puts fizz_buzz_third.(3, 6, 4)

# #2. Using if/else

# def fizz_buzz_third1(a, b, c) do
#   if a == 0 and b == 0 do
#     "FizzBuzz"
#   else
#     if a == 0 do
#       "Fizz"
#     else
#       if b == 0 do
#         "Buzz"
#       else
#         c
#       end
#     end
#   end
# end

# fizz_buzz_third = fn (a, b, c) ->
#   if a == 0 and b == 0, do: "FizzBuzz",
#   else
#     if a == 0, do: "Fizz",
#     else
#       if b == 0, do: "Buzz",
#       else: c
#     end
#   end
# end


# IO.puts fizz_buzz_third1(0, 0, 4)
# IO.puts fizz_buzz_third1(0, 2, 4)
# IO.puts fizz_buzz_third1(1, 0, 4)
# IO.puts fizz_buzz_third1(3, 6, 4)
