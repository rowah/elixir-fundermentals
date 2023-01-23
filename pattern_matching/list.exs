list = [1, 2, 3, 4]
[a, b, c, d] = list
IO.puts list


iex> {a, b, c} = {4, 5, 6} {4, 5, 6}
# iex> a
# 4
# iex> b
# 5
# iex> c
# 6


#a special | operator for lists
[ head | tail ] = [:a, :b, :c, :d] iex> IO.puts head
:a
IO.puts tail
[:b, :c, :d]

#The left side of the | operator matches the first items of a list; in this case, we’re matching only one. The right side always matches the rest of the ele- ments. We bound the first item to the variable head and the rest to the variable tail. (When working with lists, the names head for the first element and tail for the rest are common.) We have extracted values from the list without worrying about its size, separating the first element from the rest of the list.
#iex(26)> [head | tail] = [:q, :e, :b, :p]
# [:q, :e, :b, :p]
# iex(27)> head
# :q
# iex(28)> tail
# [:e, :b, :p]
# iex(29)> [head | tail] = [:q]
# [:q]
# iex(30)> head
# :q
# iex(31)> tail
# []
# iex(32)> [head | tail] = []
# ** (MatchError) no match of right hand side value: []

# iex(32)>



# iex(32)> [a, b | others ] = [1, 2, 3, 4, 5]
# [1, 2, 3, 4, 5]
# iex(33)> others
# [3, 4, 5]
# iex(34)> a
# 1
# iex(35)> b
# 2
# iex(36)>
