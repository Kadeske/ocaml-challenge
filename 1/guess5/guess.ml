let guess5 x = 
  if x >= 1 && x <= 5 then 
    let rand = Random.int(5)in 
    (x = rand, rand)
  else 
    failwith ("x non in range 1-5");;


guess5 4;;
guess5 4;;
guess5 4;;
guess5 4;;
guess5 4;;
guess5 4;;
guess5 4;;
