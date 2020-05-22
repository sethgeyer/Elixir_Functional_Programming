user_input = IO.gets "Write your ability score:\n"

{ability_score, x} = Integer.parse(user_input)
 
ability_modifier = (ability_score - 10)/2
IO.puts "your ability modifier is #{ability_modifier}"
