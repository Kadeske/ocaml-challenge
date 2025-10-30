
let f1 x = if x > 0 then true else false;;

let f2 p = function
    true -> 1
  | false -> 0;;

let f3 x = if x < 0 then (x, false) else (x, true);;

let f4 (x, p) = match (x,p) with
    (_,false) -> -x
  | _ -> x;;


let f5 x y = x * y;;

let f6 x = fun y -> x = y;;

let f7 p = fun y -> if p && y >= 0 || not p && y < 0 then true else false;;

let f8 p = fun q -> if p && q || not p && not q then 1 else 0;;

let f9 p = fun x -> if p then x else -x;;

let f10 g = g 10 ;;

let f11 f = if f 10 then 1 else 0;;

let f12 f = if f true = 1 then 1 else 0;;

let f13 f = if f 0 = false then false else true;;

let f14 f = if f true = false then 0 else 1;;

let f15 x (y,z) = (y * z) + x;;

let f16 x = fun y -> fun z -> x + y + z;;

let f17 f = fun y -> if f y > 0 && y > 0 then 1 else 0;;

let f18 f = let f_t = fun x -> x+1 in if f f_t = 1 then 1 else 0;;

let f19 f = if f 0 <> 0 then fun p -> p else fun p -> not p;; 

let f20 f = if f 0 = false then
  fun p -> if p then 0 else 1
else
  fun p -> if p then 1 else 0;;
