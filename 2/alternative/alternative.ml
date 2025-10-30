let ( <|> ) a b = match a,b with
    Some(a), Some(b) -> Some(a)
   |None, Some(b) -> Some(b)
   |Some(a), None -> Some(a) 
   |None, None -> None;;



assert (None <|> Some false = Some false);;
assert (Some true <|> None <|> Some false = Some true);;
assert (Some 3 <|> None = Some 3);;
assert (Some "cat" <|> Some "dog" = Some "cat");;
assert (None <|> None <|> Some "dog" <|> None = Some "dog");;
