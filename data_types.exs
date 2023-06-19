# Data Types

##=========================> Atom

```elixir
:error
{:error, reason} = {:error, "file not found"}
reason
```

# <!-- livebook:{"output":true} -->

```
"file not found"
```

```elixir
{:ok, msg} = {:ok, "code 200 ok status"}
msg
```

# <!-- livebook:{"output":true} -->

```
"code 200 ok status"
```

##=========================> Strings

```elixir
name = "Jay"
name
```

# <!-- livebook:{"output":true} -->

```
"Jay"
```

```elixir
is_binary(name)
```

# <!-- livebook:{"output":true} -->

```
true
```

```elixir
msg = "Hello " <> name
msg
```

# <!-- livebook:{"output":true} -->

```
"Hello Jay"
```

```elixir
msg_two = "Hello Camila"
"Hello " <> name = msg_two
name
```

# <!-- livebook:{"output":true} -->

```
"Camila"
```

```elixir
"C" <> rest = name
rest
```

# <!-- livebook:{"output":true} -->

```
"amila"
```

```elixir
<<head, rest::binary>> = name
head
```

# <!-- livebook:{"output":true} -->

```
67
```

```elixir
head == ?C
```

# <!-- livebook:{"output":true} -->

```
true
```

```elixir
?C
# iex(12)> i"Camila"
# Term
#   "Camila"
# Data type
#   BitString
# Byte size
#   6
# Description
#   This is a string: a UTF-8 encoded binary. It's printed surrounded by
#   "double quotes" because all UTF-8 encoded code points in it are printable.
# Raw representation
#   <<67, 97, 109, 105, 108, 97>>
# Reference modules
#   String, :binary
# Implemented protocols
#   Collectable, IEx.Info, Inspect, List.Chars, String.Chars
# iex(13)>
```

#<!-- livebook:{"output":true} -->

```
67
```

```elixir
?a
```

#<!-- livebook:{"output":true} -->

```
97
```

```elixir
?m
```

<!-- livebook:{"output":true} -->

```
109
```

```elixir
<<"C", rest::binary>> = name
rest
```

<!-- livebook:{"output":true} -->

```
"amila"
```

```elixir
<<"Cam", rest::binary>> = name
rest
```

<!-- livebook:{"output":true} -->

```
"ila"
```

```elixir
<<head::binary-size(2), rest::binary>> = name
head
```

<!-- livebook:{"output":true} -->

```
"Ca"
```

## Character List

```elixir
chars = 'Rowa'
chars
# iex(13)> i 'Rowa'
# Term
#   'Rowa'
# Data type
#   List
# Description
#   This is a list of integers that is printed as a sequence of characters
#   delimited by single quotes because all the integers in it represent printable
#   ASCII characters. Conventionally, a list of Unicode code points is known as a
#   charlist and a list of ASCII characters is a subset of it.
# Raw representation
#   [82, 111, 119, 97]
# Reference modules
#   List
# Implemented protocols
#   Collectable, Enumerable, IEx.Info, Inspect, List.Chars, String.Chars
# iex(14)>
```

#<!-- livebook:{"output":true} -->

```
'Rowa'
```

```elixir
'Hello ' ++ chars
```

#<!-- livebook:{"output":true} -->

```
'Hello Rowa'
```

```elixir
is_list(chars)
```

#<!-- livebook:{"output":true} -->

```
true
```

```elixir
?R
```

#<!-- livebook:{"output":true} -->

```
82
```

## Processes

```elixir
my_pid = self()
my_pid
# iex(14)> self
# #PID<0.107.0>
# iex(15)>
```

#<!-- livebook:{"output":true} -->

```
#PID<0.144.0>
```

##====================> Lists (are Linked Lists)

```elixir
vowels = ["a", "e", "i", "o", "u"]
```

#<!-- livebook:{"output":true} -->

```
["a", "e", "i", "o", "u"]
```

```elixir
# confirming this is not an array
vowels[0]
```

```elixir
vowels
Enum.at(vowels, 4)
# Enum is an inbuilt module inside Elixir, and .at is a function inside of the Enum module
```

#<!-- livebook:{"output":true} -->

```
warning: variable vowels in code block has no effect as it is never returned (remove the variable or assign it to _ to avoid warnings)
  #cell:7p4trzvk4qgw54tksbcpgt2azlhdwztm:1

```

#<!-- livebook:{"output":true} -->

```
"u"
```

```elixir
[first, second, third, fouth, fifth] = vowels
first
```

#<!-- livebook:{"output":true} -->

```
"a"
```

```elixir
[_, _, third, fouth, fifth] = vowels
third
```

#<!-- livebook:{"output":true} -->

```
"i"
```

```elixir
hd(vowels)
```

#<!-- livebook:{"output":true} -->

```
"a"
```

```elixir
tl(vowels)
```

#<!-- livebook:{"output":true} -->

```
["e", "i", "o", "u"]
```

```elixir
# uses the pipe operator
[head | tail] = vowels
# head prints out "a"
tail
```

#<!-- livebook:{"output":true} -->

```
["e", "i", "o", "u"]
```

##=======================> Tuples (similar to arrays)

```elixir
{a, b, c} = {1, 2, 3}
b
```

#<!-- livebook:{"output":true} -->

```
2
```

```elixir
{:reply, message, state} = {:reply, "I am here", ["Obi", "Wan", "Kenobi"]}
state
```

#<!-- livebook:{"output":true} -->

```
["Obi", "Wan", "Kenobi"]
```

## Keyword Lists; key-value pair data types

```elixir
data = [a: 1, b: 2, c: 3]
c
```

#<!-- livebook:{"output":true} -->

```
3
```

```elixir
# keyword lists are used converted into tuples when being saved
[{:a, 1}] = [a: 1]
```

#<!-- livebook:{"output":true} -->

```
[a: 1]
```

```elixir
# accessing values in keyword lists
data[:a]
```

#<!-- livebook:{"output":true} -->

```
1
```

##======================> Maps

```elixir
# are like tuples by start with a % outside of the curly braces, also have key and value pairs. We can use different types of data for keys.
my_map = %{a: 1, b: 2, c: 3}
my_map
```

#<!-- livebook:{"output":true} -->

```
%{a: 1, b: 2, c: 3}
```

```elixir
# pattern matching to collect values from a map into variables
%{a: first, b: second, c: third} = my_map
third
```

#<!-- livebook:{"output":true} -->

```
3
```

```elixir
%{b: second} = my_map
second
```

#<!-- livebook:{"output":true} -->

```
2
```

```elixir
# the dot notation does not work if we use different data types as the keys.
my_map.a
```

#<!-- livebook:{"output":true} -->

```
1
```

```elixir
# when using keys that are other data types, we use an arrow to pair with the values and nor the full colons
map2 = %{"name" => "James", "age" => 23}
map2["name"]
```

#<!-- livebook:{"output":true} -->

```
"James"
```

```elixir
# updating maps
map2 = %{map2 | "age" => 32}
```

#<!-- livebook:{"output":true} -->

```
%{"age" => 32, "name" => "James"}
```

```elixir
#
map3 = %{a: 4, b: 34}
map3 = %{map3 | b: 8}
```

#<!-- livebook:{"output":true} -->

```
%{a: 4, b: 8}
```

##====================> Structs

```elixir
defmodule User do
  # list of items
  defstruct(:username, :email, :password)
end
```

```elixir
defmodule User do
  # list of key value pairs
  defstruct username: "", email: "", password: nil
end
```

#<!-- livebook:{"output":true} -->

```
{:module, User, <<70, 79, 82, 49, 0, 0, 8, ...>>, %User{username: "", email: "", password: nil}}
```

```elixir
# initialize a struct
%User{username: "jay", email: "jay@autobot.com", password: 1234}
```

#<!-- livebook:{"output":true} -->

```
%User{username: "jay", email: "jay@autobot.com", password: 1234}
```

```elixir
userOne = %User{username: "jay", email: "jay@autobot.com", password: 1234}
# madifying stucts
userOne = %{userOne | username: "Jrowah"}
```

#<!-- livebook:{"output":true} -->

```
%User{username: "Jrowah", email: "jay@autobot.com", password: 1234}
```

```elixir
# pattern matching structs, structs have similar behaviours as maps
%{username: username} = userOne
username
```

#<!-- livebook:{"output":true} -->

```
"jrowah"
```
