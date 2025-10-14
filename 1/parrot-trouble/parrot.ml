let parrot_trouble talk h = 
  if (h < 0 || h > 23) then
    None
  else
    (if ((h<7) || (h>20)) && talk then
       Some true
     else
       Some false);;
    
    
    
    
assert (parrot_trouble true 21 = Some true);;
assert (parrot_trouble true 7 = Some false);; 
assert (parrot_trouble false 6 = Some false);; 
assert (parrot_trouble true 24 = None);;


