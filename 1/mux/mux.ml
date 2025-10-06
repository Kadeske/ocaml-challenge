let mux2 s0 a b = (not s0 && b) || (s0 && a) ;;

let mux2_2 s0 a b = (if s0 then a else b) ;;

let mux2_3 s0 a b = match(s0,a,b) with
    (false,_,_) -> b
  | (true,_,_) -> a ;;


let mux4 s1 s0 a0 a1 a2 a3 = (mux2 s1  (mux2 s0 a3 a2) (mux2 s0 a1 a0));;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;
  
  
