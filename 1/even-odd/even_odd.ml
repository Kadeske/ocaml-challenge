let is_even x = (x mod 2 = 0);;

let win a b = 
  if a >= 1 && a <= 5 && b >= 1 && b <= 5 then
    if (is_even (a+b)) then
      1
    else 
      -1
  else if a < 1 || a > 5 then 
    if b < 1 || b > 5 then 
      0
    else 
      -1
  else
    1
;;


assert (is_even 0 = true);;
assert (is_even 2 = true);;
assert (is_even 4 = true);;
assert (is_even (-2) = true);;
assert (is_even 1 = false);;
assert (is_even 3 = false);;
assert (is_even (-1) = false);;

assert (win 1 1 = 1);;
assert (win 1 2 = -1);;
assert (win 1 3 = 1);;
assert (win 1 4 = -1);;
assert (win 1 5 = 1);;
assert (win 2 1 = -1);;
assert (win 2 2 = 1);;
assert (win 2 3 = -1);;
assert (win 2 4 = 1);;
assert (win 2 5 = -1);;
assert (win 3 1 = 1);;
assert (win 3 2 = -1);;
assert (win 3 3 = 1);;
assert (win 3 4 = -1);;
assert (win 3 5 = 1);;
assert (win 4 1 = -1);;
assert (win 4 2 = 1);;
assert (win 4 3 = -1);;
assert (win 4 4 = 1);;
assert (win 4 5 = -1);;
assert (win 5 1 = 1);;
assert (win 5 2 = -1);;
assert (win 5 3 = 1);;
assert (win 5 4 = -1);;
assert (win 5 5 = 1);;
assert (win 0 1 = -1);;
assert (win 1 0 = 1);;
assert (win 0 0 = 0);;
assert (win 6 1 = -1);;
assert (win 1 6 = 1);;
assert (win 6 6 = 0);;
assert (win 0 6 = 0);;
