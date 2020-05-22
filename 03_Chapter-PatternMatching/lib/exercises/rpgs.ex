# funtion return total number of points players hav spent
# function takes a map with keys of s, d, i. s = pt * 2,  d * 3, i * 3

defmodule PtsCalc do

  def calculate_points(map) do
    %{strength: s, dexterity: d, intelligence: i} = map

    s * 2 + (d + i) *  3
  end
end
