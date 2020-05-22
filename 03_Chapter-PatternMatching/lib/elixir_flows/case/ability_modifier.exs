user_input = IO.gets "Write number:\n"

x = Integer.parse(user_input)
mod = fn(ability_score) -> (ability_score - 10)/2 end

case  x do
  :error -> IO.puts "Invalid #{user_input}"


  {ability_score, _} when ability_score >= 0 -> ability_modifier = mod.(ability_score)
  IO.puts "your score is #{ability_modifier}"
end
