type person = Person of (string * int * string option);;


let make_person (name:string) (age:int) (mail:string option) = 
  if age >= 0 && age <= 150 then 
    Person(name,age, mail)
  else 
    failwith ("Età non accettabile");;

let get_email (p: person) = match p with 
  |  Person(name, age, Some p) -> Some p
  | Person(name, age, _) -> None;;

let can_send_adult_email (p: person) = match p with 
  | Person(name, age, Some mail) when age >= 18 -> true
  | _ -> false;;


let gino = make_person "gino" 21 (Some "gino@gmail.com");;
let pino = make_person "pino" 23 None;;
let anna = make_person "anna" 16 (Some "anna@tiscali.it");;

assert(get_email gino = Some "gino@gmail.com");;
assert(get_email pino = None);;

assert(can_send_adult_email gino);;
assert(not (can_send_adult_email pino));;
assert(not (can_send_adult_email anna));;
