#Importing Named Functions
# use the import directive to create a module that stores a list of tasks in a file
defmodule TaskList do
  @file-name "task_list.md" #module attribute

  def add(task_name) do
    task = "[ ] " <> task_name <> "\n"
    File.write(@file_name, task, [:append])
  end
  def show_list do
    File.read(@file_name)

  end
end


#Function arity: number after the function name in the import directive is called the function arity. A function arity is the number of arguments a function receives


defmodule TaskListWithImport do
  import File, only: [write: 3, read: 1] #reduce the necessity of writing File every time we call write or read functions by importing the module functions
  @file_name "task_list.md"

  def add(task_name) do
    task = "[ ] " <> task_name <> "\n"
    write(@file_name, task, [:append])
  end

  def show_list do
    read(@file_name)
  end

end


#TASK1
#Create an expression that solves the following problem: Sarah has bought ten slices of bread for ten cents each, three bottles of milk for two dollars each, and a cake for fifteen dollars. How many dollars has Sarah spent?

10 * 0.10 + 3 * 2 + 15

#TASK2
#Bob has traveled 200 km in four hours. Using variables, print a message showing his travel distance, time, and average velocity.
message = fn distance, time -> "Distance is #{distance} km, time is #{time} hours and velocity is #{distance/time} km per hour" end
#Function<43.97283095/2 in :erl_eval.expr/5>
message.(200, 4) #"Distance is 200 km, time is 4 hours and velocity is 50.0 km per hour"


#TASK3
#Build an anonymous function that applies a tax of 12% to a given price. It should print a message with the new price and tax value. Bind the anonymous function to a variable called apply_tax. You should use apply_tax with Enum.each/2, like in the following example. Don’t worry about Enum.each/2 now; you’ll see it in detail in Chapter 5, Using Higher-Order Functions, on page 81. You only need to know that Enum.each/2 will execute apply_tax in each item of a list.
#Enum.each [12.5, 30.99, 250.49, 18.80], apply_tax
# Price: 14.0 - Tax: 1.5
# Price: 34.7088 - Tax: 3.7188
# Price: 280.5488 - Tax: 30.0588
# Price: 21.056 - Tax: 2.256

apply_tax = fn price -> "Price: #{(price * 0.12) + price} - Tax: #{price * 0.12}" end
Enum.each [12.5, 30.99, 250.49, 18.80], apply_tax

#TASK3
#Create a module called MatchstickFactory and a function called boxes/1. The function will calculate the number of boxes necessary to accommodate some matchsticks. It returns a map with the number of boxes necessary for each type of box. The factory has three types of boxes: the big ones hold fifty matchsticks, the medium ones hold twenty, and the small ones hold five. The boxes can’t have fewer matchstick that they can hold; they must be full. The returning map should contain the remaining match- sticks. It should work like this:
#MatchstickFactory.boxes(98)
# %{big: 1, medium: 2, remaining_matchsticks: 3, small: 1}
#MatchstickFactory.boxes(39)
# %{big: 0, medium: 1, remaining_matchsticks: 4, small: 3}
#Tip: You’ll need to use the rem/2 and div/2 functions

defmodule MatchstickFactory do
  def boxes/1(matchsticks) do
  end

end
