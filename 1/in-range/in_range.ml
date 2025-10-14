let in_range x a b = if x >= a &&  x <= b then true else false;;

assert (in_range 5 1 10 = true);;
assert (in_range 1 1 10 = true);;
assert (in_range 10 1 10 = true);;
assert (in_range 0 1 10 = false);;
assert (in_range 11 1 10 = false);;
assert (in_range 5 10 1 = false);;
assert (in_range 'c' 'a' 'z' = true);;
assert (in_range 'a' 'a' 'z' = true);;
assert (in_range 'z' 'a' 'z' = true);;
assert (in_range 'A' 'a' 'z' = false);;
assert (in_range 3.14 1.0 5.0 = true);;
assert (in_range 0.5 1.0 5.0 = false);;
