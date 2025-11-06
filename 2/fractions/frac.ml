let is_posfrac (a,b) = match (a,b) with 
     (a,b) when b = 0 -> false 
  |  (a,b) when a > 0 && b > 0 -> true
  | (a,b) when a <0 && b < 0 -> true 
  | _ -> false ;;

let compare_posfrac (a,b) (c,d) = 
  if not(is_posfrac (a,b))  || not(is_posfrac (c,d)) then 
    failwith("Una o entrambe le frazioni non sono positive")
  else
    let x = a * d in let y = b * c in 
    if x = y then 0 
    else if x > y then 1 
    else -1;;

assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;



let compare_frac (a,b) (c,d) = 
  if b = 0 || d = 0 then failwith("divisione per 0") else 
    let x = a * d in let y = b * c in 
    if x = y then 0 
    else if x > y then 1 
    else -1;;


assert (compare_frac (1, 2) (2, 4) = 0);;
assert (compare_frac (3, 4) (6, 8) = 0);;
assert (compare_frac (1, 3) (1, 3) = 0);;
assert (compare_frac (1, 2) (1, 3) = 1);;
assert (compare_frac (2, 3) (1, 2) = 1);;
assert (compare_frac (5, 6) (2, 3) = 1);;
assert (compare_frac (1, 4) (1, 2) = -1);;
assert (compare_frac (2, 5) (3, 7) = -1);;
assert (compare_frac (3, 8) (1, 2) = -1);;
assert (compare_frac (-1, 2) (1, -2) = 0);;
assert (compare_frac (2, -3) (-4, 6) = 0);;
assert (compare_frac (-1, 3) (-2, 6) = 0);;

