let tris ((a:int),(b:int),(c:int),(d:int)) = if a = b &&b = c || a = b && b = d || a = c && c = d || b = c && c = d then true else false;;

let hand = ((Random.int 10+1), (Random.int 10+1),(Random.int 10+1),(Random.int 10+1));;

tris hand;;
