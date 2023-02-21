#Using pattern matching and the modulo operator:
defmodule FizzBuzz1 do
  def fizz_buzz(n) when rem(n, 15) == 0, do: "FizzBuzz"
  def fizz_buzz(n) when rem(n, 5) == 0, do: "Buzz"
  def fizz_buzz(n) when rem(n, 3) == 0, do: "Fizz"
  def fizz_buzz(n), do: n

def run(n) do
  for i <- 1..n do
    IO.puts fizz_buzz(i)
  end
end

end

#Using a case statement and the modulo operator:
defmodule FizzBuzz2 do
  def fizz_buzz(n) do
    case {rem(n, 3), rem(n, 5)} do
      {0, 0} -> "FizzBuzz"
      {0, _} -> "Fizz"
      {_, 0} -> "Buzz"
      _ -> n
    end
  end

  def run(n) do
    for i <- 1..n do
      IO.puts fizz_buzz(i)
    end
  end

end

#Using if/else

defmodule FizzBuzz3 do
  def fizz_buzz(n) do
    for i <- 1..n do
      if rem(n, 15) == 0 do
        IO.puts "FizzBuzz"
      else
        if rem(n, 3) == 0 do
          IO.puts "Fizz"
        else
          if rem(n, 5) == 0 do
            IO.puts "Buzz"
          else
            IO.puts "#{n}"
          end
        end
      end
    end
  end

end
