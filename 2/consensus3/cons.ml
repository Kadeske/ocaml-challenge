let consensus3 (f, g, h) =   
  fun n -> let _f = f n in let _g = g n in let _h = h n in 
  if _f = _g || _f = _h then Some _f 
  else if _g = _h then Some _g 
  else None;;

assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 1 = Some 5);;
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 2 = Some 2);;
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 3 = None);;
assert (
  try
    consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 0
    |> ignore; false
  with _ -> true);;
