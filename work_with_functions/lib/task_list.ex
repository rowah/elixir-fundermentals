#Importing Named Functions
# use the import directive to create a module that stores a list of tasks in a file
defmodule TaskList do
  import File, only: [write: 3, read: 1] #reduce the necessity of writing File every time we call write or read functions by importing the module functions
  @file-name "task_list.md" #module attribute

  def add(task_name) do
    task = "[ ] " <> task_name <> "\n"
    File.write(@file_name, task, [:append])
  end
  def show_list do
    File.read(@file_name)

  end
end
