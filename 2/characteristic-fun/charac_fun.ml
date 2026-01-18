

let is_prime n =
  (* 1. Gestione dei casi base *)
  if n <= 1 then false (* 0 e 1 non sono primi *)
  else if n = 2 then true (* 2 è l'unico primo pari *)
  else if n mod 2 = 0 then false (* Tutti gli altri pari non sono primi *)
  else
    (*
     * 2. Controlliamo solo i divisori dispari.
     * Non serve controllare oltre la radice quadrata di n.
     *)
    let limit = int_of_float (sqrt (float_of_int n)) in

    (* 3. Funzione ricorsiva interna *)
    let rec check_divisor d =
      if d > limit then
        true (* Se abbiamo superato la radice, è primo *)
      else if n mod d = 0 then
        false (* Se è divisibile, non è primo *)
      else
        check_divisor (d + 2) (* Passa al prossimo divisore dispari *)
    in

    (* 4. Inizia il controllo da 3 *)
    check_divisor 3
;;


(*∅ *)


let f1 x = if x < 0 then failwith ("Numero negativo") else 0;;

(*{0, 1, 2}*)
let f2 x = if x < 0 then failwith ("Numero negativo") else
  if x = 1 ||  x = 2 || x = 0 then 1 else 0;;

(*{x | 0 < x < 100}*)

let f3 x = if x < 0 then failwith ("Numero negativo") else
  if x > 0 && x < 100 then 1 else 0;;

(*{x | false }*)
let f4 x = if x < 0 then failwith ("Numero negativo") else 0;;

(*{x | ∀y. x + y ≥ x}*)
let f5 x = if x < 0 then failwith ("Numero negativo") else 1;;

(*{x | ∃y. x = y + y}*)
let f6 x = if x < 0 then failwith ("Numero negativo") else
  if x mod 2 = 0 then 1 else 0;;


(*{x | ∃y. y = x + x}*)
let f7 x = if x < 0 then failwith ("Numero negativo") else 1;;

(*{x | ∃y. x < y}*)
let f8 x = if x < 0 then failwith ("Numero negativo") else
  if x >= 0 then 1 else 0;;

(*{x | ∃y. x * x = y}*)
let f9 x = if x < 0 then failwith ("Numero negativo") else 1;;

(*{x | ∃y. y < 3 ∧ 7 < x y < 20 }*)  
let f10 x = if x < 0 then failwith ("Numero negativo") else
  if x > 3 && x < 20 then 1 else 0;;

(*{x | x < 50 ∧ ∃y. x = y + y}*)
let f11 x = if x < 0 then failwith ("Numero negativo") else
  if x mod 2 = 0 && x < 50 then 1 else 0;;

(*{z | ∃x. z = 2 x ∧ 0 < 2x < 50 }*)
let f12 z = if z < 0 then failwith ("Numero negativo") else
  if z > 0 && z < 50 && (z mod 2 = 0) then 1 else 0;;

(*{z | ∃x, y. z = x + y ∧ x * y ≤ 20}*)
let f13 z = if z < 0 then failwith ("Numero negativo") else 1;; (*è sempre vero*)

(*{x | ∀y. y < x → y < 2 }*)
let f14 x = if x < 0 then failwith ("Numero negativo") else
  if x > 2 then 1 else 0;;

(*{x | ∀y. (x mod y = 0) → (y=1 ∨ y=x) }*)
let f15 x = if x < 0 then failwith ("Numero negativo") else
  if not (is_prime x ) then 1 else 0;;
