Random.self_init();;

type winner = Player | Computer | Tie ;;



let win hp gp = let hc = Random.int(5+1) in let gc = Random.int(10+1) in let somma = hp + hc in 
  if somma = gp && somma != gc then ((hc, gc), Player)
  else if somma = gc then  ((hc,gc), Computer)
  else ((hc,gc), Tie);;



(*sbagliata secondo il testo*)
let win_alternativa hp gp = let hc = Random.int(5+1) in let gc = Random.int(10+1) in 
  if gp = gc then ((hc,gc), Tie)
  else if (hp + hc) = gp then ((hc, gc), Player)
  else ((hc,gc), Computer);;
