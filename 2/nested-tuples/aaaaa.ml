

let total_score  (score:(string*(int*int)))  = fst (snd score) + snd (snd score);;

let passed (score:(string*(int*int)))  = if fst (snd score) > 18 && snd( snd score) > 18 then true else false;;

let string_of_result (score:(string*(int*int))) = 
  if passed score then 
    (fst (score)) ^ " ha passato l'esame con un totale di " ^ string_of_int (total_score score)
  else 
    (fst (score)) ^ " non ha pasato l'esame";;


let merge (score1:(string*(int*int))) (score2:(string*(int*int))) = 
  if fst score1 <> fst score2 then failwith ("Di studenti diversi")
  else 
    (fst score1, ( max (fst (snd score1)) (fst (snd score2)), max (snd (snd score1)) (snd (snd score2))));;
