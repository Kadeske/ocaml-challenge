let nand a b = not (a && b) ;;

let nand2 a b = (if not a then true else (if not b then true else false)) ;;

let nand3 a b = match(a,b) with
    (true, true) -> false
  | _ -> true;;



