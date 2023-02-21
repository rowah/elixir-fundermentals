# Create an Elixir script where users can type their salary and see the income tax and the net wage. You can use the module from the previous exercise, but this script should parse the user input and display a message when users type something that is not a valid number.
# defmodule NetWage do
#   salary = IO.gets "What is your salary? \n"
#   case Float.parse(salary) do
#     :error ->
#       IO.puts "Invalid input #{salary}"
#     {salary, _} ->
#       income_tax = salary * 0.12
#       net_salary = salary - income_tax
#       IO.puts "Your net wage is #{net_salary}"
#   end


# end

#OR
#create a module
defmodule SalaryCalculator do
  #gets user input
  def run do
    input = IO.gets("What is your salary?\n") |> String.trim()
    calculate_salary(input)
  end
  #function takes in the input
  def calculate_salary(input) do
    #convert the string input to a floating-point number
    case Float.parse(input) do
      #pattern matching the returned tuple by Float.parse to salary which when is a number we carry on the calculations
      {salary, _} when is_number(salary) ->
        #calls the calculate_tax function
        tax = calculate_tax(salary)
        net_wage = salary - tax
        IO.puts("Salary: #{salary}")
        IO.puts("Income tax: #{tax}")
        IO.puts("Net wage: #{net_wage}")
      _ ->
        IO.puts("Invalid input. Please enter a valid number.")
    end
  end

  def calculate_tax(salary) do
    case salary do
      _ when salary <= 0 ->
        0
      _ when salary <= 2500 ->
        salary * 0.15
      _ when salary <= 5000 ->
        375 + (salary - 2500) * 0.25
      _ ->
        1125 + (salary - 5000) * 0.4
    end
  end
end

SalaryCalculator.run()
