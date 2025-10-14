let min2 x y = if x < y then x else y ;;
let max2 x y = if x > y then x else y;; 

let minmax3 a b c = (min2 (min2 a b) c, max2(max2 a b) c);;


assert (minmax3 1 2 3 = (1, 3));;
assert (minmax3 3 2 1 = (1, 3));;
assert (minmax3 2 1 3 = (1, 3));;
assert (minmax3 2 3 1 = (1, 3));;
assert (minmax3 3 1 2 = (1, 3));;
assert (minmax3 1 3 2 = (1, 3));;
assert (minmax3 5 5 5 = (5, 5));;
assert (minmax3 1 1 2 = (1, 2));;
assert (minmax3 1 2 2 = (1, 2));;
assert (minmax3 (-1) (-2) (-3) = (-3, -1));;
assert (minmax3 'c' 'a' 'b' = ('a', 'c'));;
