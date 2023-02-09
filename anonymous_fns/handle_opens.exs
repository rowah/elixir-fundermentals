handle_opens = fn
{:ok, file} -> "First line: #{IO.read(file, :line)}"
{_, error} -> "Error: #{:file.format_error(error)}"
end
IO.puts handle_opens.(File.open("anonymous.exs")) #existing file
IO.puts handle_opens.(File.open("nonexistent")) #nonexisting


#run c "handle_open.exs" inside iex
# iex(3)> c "handle_opens.exs"
# First line: #â¤ Exercise: Functions-1

# Error: no such file or directory
# []
# iex(4)>
