type season = Spring | Summer | Autumn | Winter;;

let squirrel_play temp season = if season <> Summer && temp >= 15 && temp <= 30 then
    true
  else
  if temp >= 15 && temp <= 35 && season = Summer then
    true
  else
    false;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;
