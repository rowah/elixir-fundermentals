defmodule Subscriber do
  defstruct name: "", paid: false, over_18: true
end


#The syntax for creating a struct is the same as the syntax for creating a map—you simply add the module name between the % and the {.
# iex defstruct.exs                                                                       ─╯
# Erlang/OTP 23 [erts-11.0] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:1] [hipe]

# Interactive Elixir (1.12.3) - press Ctrl+C to exit (type h() ENTER for help)
# iex(1)> s1 = %Subscriber{}
# %Subscriber{name: "", over_18: true, paid: false}
# iex(2)> s2 = %Subscriber{name: "Jrowah"}
# %Subscriber{name: "Jrowah", over_18: true, paid: false}
# iex(3)> s3 = %Subscriber{name: "Dave", paid: true}
# %Subscriber{name: "Dave", over_18: true, paid: true}
# iex(4)> s3.name
# "Dave"
