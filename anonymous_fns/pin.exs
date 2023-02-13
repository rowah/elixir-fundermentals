defmodule Greeter do
  def for(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_) -> "Who are you, again?"
     end
  end

end

greeting = Greeter.for("Rowah", "Hola")
IO.puts greeting.("Rowah") #Hola Rowah
IO.puts greeting.("Omera") #Who are you, again?
