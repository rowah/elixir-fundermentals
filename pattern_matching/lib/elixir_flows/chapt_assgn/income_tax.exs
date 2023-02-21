# Create a function that calculates income tax following these rules: a salary equal or below $2,000 pays no tax; below or equal to $3,000 pays 5%; below or equal to $6,000 pays 10%; everything higher than $6,000 pays 15%.

fn calc_tax(salary) do
  case salary do
    _ when salary <= 2000 ->
      tax = 0
    _ when salary <= 3000 ->
      tax = salary * 0.05
    _ when salary <= 6000 ->
      tax = salary * 0.1
    _ when salary > 6000 ->
      tax = salary * 0.15

  end
  IO.puts "#{tax}"
end


#OR using guard clauses
defmodule TaxCalculator do
  def calculate_tax(salary) when salary <= 2000 do
    0
  end

  def calculate_tax(salary) when salary <= 3000 do
    salary * 0.05
  end

  def calculate_tax(salary) when salary <= 6000 do
    salary * 0.1
  end

  def calculate_tax(salary) do
    salary * 0.15
  end
end
