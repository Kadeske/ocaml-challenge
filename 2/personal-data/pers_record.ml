type person = {
  name : string;
  age : int;
  email : string option;
}



let make_person (n:string) (a:int) (m:string option) = {name = n; age = a; email = m};;


let get_email (p:person) = p.email;;


let can_send_adult_email (p: person) = match (p.age, p.email) with 
  | (age, Some email) when age >= 18 -> true
  | _ -> false;;



let gino = make_person "gino" 21 (Some "gino@gmail.com");;
let pino = make_person "pino" 23 None;;
let anna = make_person "anna" 16 (Some "anna@tiscali.it");;

assert(get_email gino = Some "gino@gmail.com");;
assert(get_email pino = None);;

assert(can_send_adult_email gino);;
assert(not (can_send_adult_email pino));;
assert(not (can_send_adult_email anna));;
