Random.self_init();;

let dice perc = let n = Random.int(100) +1 in 
  if n <= perc then 6 else Random.int(5)+1;; 
