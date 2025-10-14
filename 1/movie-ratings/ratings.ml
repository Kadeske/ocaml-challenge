let movie_rating r1 r2 r3 = 
  if (r1 >= 0 && r1 <= 5) && (r2 >= 0 && r2 <= 5) && (r3 >= 0 && r3 <= 5) then 
    (
      if r1 = 5 && r2 = 5 && r3 = 5 then
        "Masterpiece" 
      else if (r1 = 5 && r2 = 5 && r3 >= 4) || (r1 >= 4 && r2 = 5 && r3 = 5) || (r1 = 5 && r2 >= 4 && r3 = 5) then
        "Highly Recommended"
      else if (r1 >= 4 && r2 >= 4 && r3 >= 3) || (r1 >= 3 && r2 >= 4 && r3 >= 4) || (r1 >= 4 && r2 >= 3 && r3 >= 4) then
        "Recommended"
      else 
        "Mixed Reviews"
    )
  else
    "Non valida";;

assert (movie_rating 5 5 5 = "Masterpiece");;
assert (movie_rating 5 5 4 = "Highly Recommended");;
assert (movie_rating 4 5 5 = "Highly Recommended");;
assert (movie_rating 5 4 5 = "Highly Recommended");; 

assert (movie_rating 4 4 3 = "Recommended");;
assert (movie_rating 3 4 4 = "Recommended");;
assert (movie_rating 4 3 4 = "Recommended");;
assert (movie_rating 3 5 5 = "Recommended");;
assert (movie_rating 5 3 5 = "Recommended");;
assert (movie_rating 4 4 4 = "Recommended");;

assert (movie_rating 5 5 3 = "Recommended");;
assert (movie_rating 3 5 5 = "Recommended");;

assert (movie_rating 4 4 2 = "Mixed Reviews");;
assert (movie_rating 2 4 4 = "Mixed Reviews");;
assert (movie_rating 3 3 4 = "Mixed Reviews");;
assert (movie_rating 1 1 1 = "Mixed Reviews");;
assert (movie_rating 3 2 1 = "Mixed Reviews");;

