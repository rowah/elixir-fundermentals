# In RPGs, players have points to spend on their character attributes. Create a function that returns the total number of points players have spent on their characters. The function will receive a map containing the strength, dexterity, and intelligence values. Each point in strength should be multiplied by two, and dexterity and intelligence should be multiplied by three.

#abilities = %{strength: 10,  dexterity: 12, intelligence: 16}



points_spent = fn abilities ->
  %{strength: strength_value} = abilities
  %{dexterity: dexterity_value} = abilities
  %{intelligence: intelligence_value} = abilities
  total_points = (strength_value * 2) + (dexterity_value * 3) + (intelligence_value * 3)
  IO.puts total_points
end

IO.puts points_spent.(%{strength: 10,  dexterity: 12, intelligence: 16})

#OR
attributes = %{strength: 5, dexterity: 4, intelligence: 7}
total_points = points_spent.(attributes)
IO.puts total_points  # Output: 32
