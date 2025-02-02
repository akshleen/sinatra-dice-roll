# /dice.rb
require "sinatra/reloader" 
require "sinatra"

# /dice.rb

require "sinatra"

get("/") do
  "<h1 style='font-family: Times New Roman, sans-serif;'>Dice Roll</h1>
  <ul style='list-style-type: disc; font-size: 20px;'>
    <li><a href='/dice/2/6' style='color: indigo; text-decoration: underline;'>Roll two 6-sided dice</a></li>
    <li><a href='/dice/2/10' style='color: indigo; text-decoration: underline;'>Roll two 10-sided dice</a></li>
    <li><a href='/dice/1/20' style='color: indigo; text-decoration: underline;'>Roll one 20-sided die</a></li>
    <li><a href='/dice/5/4' style='color: indigo; text-decoration: underline;'>Roll five 4-sided dice</a></li>
  </ul>"
end

get("/zebra") do
  "We must add a route for each path we want to support"
end
get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end
get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end
get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  "<h1>2d10</h1>
   <p>#{outcome}</p>"
end

get("/dice/1/20") do
  die = rand(1..20)

  outcome = "You rolled a #{die}."

  "<h1>1d20</h1>
   <p>#{outcome}</p>"
end

get("/dice/5/4") do
  rolls = Array.new(5) { rand(1..4) }
  sum = rolls.sum

  outcome = "You rolled #{rolls.join(', ')} for a total of #{sum}."

  "<h1>5d4</h1>
   <p>#{outcome}</p>"
end
