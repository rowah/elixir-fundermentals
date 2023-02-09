
fizz_buzz_third = fn (0, 0, _c) -> "FizzBuzz"
                  (0, _, _c) -> "Fizz"
                  (_, 0, _c) -> "Buzz"
                  (_, _, c) -> c
end
# The operator rem(a, b) returns the remainder after dividing a by b. Write a function that takes a single integer (n) and calls the function in the previous exercise, passing it rem(n,3), rem(n,5), and n. Call it seven times with the arguments 10, 11, 12, and so on. You should get “Buzz, 11, Fizz, 13, 14, FizzBuzz, 16.”


# if (theNumber is divisible by 3) and (theNumber is divisible by 5) then
# print "FizzBuzz"
# else if (theNumber is divisible by 3) then
# print "Fizz"
# else if (theNumber is divisible by 5) then
# print "Buzz"
# else /* theNumber is not divisible by 3 or 5 */
# print theNumber
# end if


defmodule FizzBuzz do
  def fizz_buzz(n) do
    for i <- 1..n do
      if rem(i, 3) == 0 and rem(i, 5) == 0 do
        IO.puts "FizzBuzz"
      else
        if rem(i, 3) == 0 do
          IO.puts "Fizz"
        else
          if rem(i, 5)  == 0 do
            IO.puts "Buzz"
          else
            IO.puts "#{i}"
          end
        end
      end
    end

  end

end

FizzBuzz.fizz_buzz(20)
