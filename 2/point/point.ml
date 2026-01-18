type point = float * float;;


let translate (p:point) x y = (((fst p) +. x, (snd p) +. y):point);;

let distance_from_origin (p:point) = sqrt (exp (fst p) +. exp (snd p));; 

type color = Red | Green | Blue;;

type colored_point = point * color;;

let same_color (p1: colored_point) (p2: colored_point )= if snd p1 = snd p2 then true else false;; 

let recolor (p: colored_point) (c:color) = ((fst p, c) : colored_point)

