Random.self_init ();;

type suit = S | H | D | C;;
type card = Card of int * suit;;

let rand_suit ()= match (Random.int 4) with
    0 -> S 
  | 1 -> H 
  | 2 -> D 
  | _ -> C 
  ;;


let rand_card () = 
  let v = (Random.int 13) +1 in 
  let s = rand_suit () in 
  Card(v,s);;


let rndHand ()= ( rand_card (),  rand_card (), rand_card (),rand_card (),rand_card ());;


let poker (a,b,c,d,e) = 
  let value (Card(v,_)) = v in 
  let suit (Card(_,s)) = s in
    let compare_2_card (c1:card) (c2:card) = if value(c1) = value(c2) && suit(c1) <> suit(c2) then true else false in 
  let compare_4_card (c1:card) (c2:card) (c3:card) (c4:card) = 
    if (compare_2_card c1 c2) && (compare_2_card c1 c3) && (compare_2_card c1 c4) &&
       (compare_2_card c2 c3) && (compare_2_card c2 c4) && (compare_2_card c3 c4)
      then true else false in 
  if compare_4_card a b c d ||
     compare_4_card a b c e ||
     compare_4_card a b d e ||
     compare_4_card a c d e || 
     compare_4_card b c d e then true else false;;


poker (rndHand ());;

assert (poker (Card(5, C), Card(7, S), Card(7, H), Card(7, D), Card(7, C)) = true);;
assert (poker (Card(1, S), Card(1, H), Card(4, D), Card(1, D), Card(1, C)) = true);;
assert (poker (Card(9, S), Card(9, H), Card(9, D), Card(9, S), Card(1, C)) = false);;
assert (poker (Card(7, S), Card(7, H), Card(7, D), Card(4, C), Card(4, S)) = false);;
assert (poker (Card(1, S), Card(1, H), Card(1, C), Card(2, D), Card(3, S)) = false);;
assert (poker (Card(5, S), Card(5, H), Card(8, D), Card(8, C), Card(10, S)) = false);;
assert (poker (Card(13, S), Card(13, H), Card(2, D), Card(5, C), Card(9, S)) = false);;
assert (poker (Card(2, S), Card(5, H), Card(7, D), Card(10, C), Card(13, S)) = false);;
assert (poker (Card(2, H), Card(5, H), Card(7, H), Card(10, H), Card(13, H)) = false);;



