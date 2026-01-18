type operation = Add of int * int | Sub of int * int | Mul of int * int | Div of int * int;;

let eval (op:operation) = match op with
    Add (a,b) -> Some (a+b)
  | Sub (a,b) -> Some (a-b)
  | Mul (a,b) -> Some (a*b)
  | Div (a,b) -> if b = 0 then None else Some (a/b);; 


let make_operation op n1 n2 = match (op, n1, n2) with 
    ('+', _, _) -> (Add (n1,n2): operation)
  | ('-', _, _) -> (Sub (n1,n2):operation)
  | ('*', _, _) -> (Mul (n1,n2):operation)
  | ('/', _, 0) -> failwith("Divisione per zero")
  | ('/', _, _) -> (Div (n1,n2): operation)
  | (_,_,_) -> failwith("Input non valido");;




assert (eval (Add (5, 3)) = Some 8);;
assert (eval (Add (-10, 5)) = Some (-5));;

assert (eval (Sub (10, 4)) = Some 6);;
assert (eval (Sub (5, 10)) = Some (-5));;

assert (eval (Mul (2, 6)) = Some 12);;
assert (eval (Mul (-3, 3)) = Some (-9));;

assert (eval (Div (9, 3)) = Some 3);;
assert (eval (Div (10, 3)) = Some 3);; 
assert (eval (Div (-10, 3)) = Some (-3));;

assert (eval (Div (9, 0)) = None);;
assert (eval (Div (0, 0)) = None);;


assert (make_operation '+' 5 7 = Add (5, 7));;
assert (make_operation '-' 10 2 = Sub (10, 2));;
assert (make_operation '*' 4 5 = Mul (4, 5));;
assert (make_operation '/' 20 5 = Div (20, 5));;

