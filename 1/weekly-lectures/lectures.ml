type weekday = Mo | Tu | We | Th | Fr;;

type course = ALF | LIP ;;

let isLecture d c = match(d,c) with 
    (Th, _) -> true
  | (Tu, ALF) -> true
  | (Fr, ALF) -> true
  | (We, LIP) -> true
  | _ -> false;;

