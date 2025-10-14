let square x = if x <> 0 then (x * x) else 0 ;;


let exp9 x = square (square (square x)) * x ;;


assert (square 0 = 0);;
assert (square 1 = 1);;
assert (square 2 = 4);;
assert (square 3 = 9);;
assert (square 4 = 16);;
assert (square 5 = 25);;
assert (square (-1) = 1);;
assert (square (-2) = 4);;
assert (square (-3) = 9);;

assert (exp9 0 = 0);;
assert (exp9 1 = 1);;
assert (exp9 2 = 512);;
assert (exp9 (-1) = -1);;
assert (exp9 (-2) = -512);;
