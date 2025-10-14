type card = Joker | Val of int;;


let max x y = if x > y then x else y;;


let win p d = 
  if p <> Joker && d <> Joker then 
    if p <> d then 
      (max p d = p)
    else 
      false 
  else
    if p = Joker && d = Joker then 
      false 
    else 
      if p = Joker then 
        true 
      else 
        false 
;;

assert (win (Val 5) (Val 3) = true);;
assert (win (Val 3) (Val 5) = false);;
assert (win (Val 7) (Val 7) = false);;
assert (win Joker (Val 5) = true);;
assert (win (Val 5) Joker = false);;
assert (win Joker Joker = false);;
assert (win (Val 1) (Val 10) = false);;
assert (win (Val 10) (Val 1) = true);;
