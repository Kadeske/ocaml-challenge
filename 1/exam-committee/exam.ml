type voto = StrongReject | WeakReject | WeakAccept | StrongAccept;;

let decide_exam v1 v2 v3 = match(v1, v2, v3) with
    (StrongReject, _ , _) -> false
  | (_ , StrongReject, _) -> false
  | (_ , _, StrongReject) -> false
  | (WeakReject, WeakReject, _) -> false
  | (_, WeakReject, WeakReject) -> false
  | (WeakReject, _, WeakReject) -> false
  | _ -> true;;



assert (decide_exam WeakAccept StrongAccept WeakReject = true);;
assert (decide_exam StrongAccept WeakAccept WeakReject = true);;
assert (decide_exam WeakReject WeakAccept WeakAccept = true);;
assert (decide_exam StrongAccept StrongAccept WeakReject = true);;

assert (decide_exam WeakAccept WeakAccept WeakAccept = true);;
assert (decide_exam StrongAccept WeakAccept StrongAccept = true);;
assert (decide_exam StrongAccept StrongAccept StrongAccept = true);;

assert (decide_exam WeakAccept WeakAccept StrongReject = false);;

assert (decide_exam StrongReject StrongAccept StrongAccept = false);;

assert (decide_exam WeakAccept StrongReject StrongAccept = false);;

assert (decide_exam WeakAccept StrongReject StrongReject = false);;

assert (decide_exam StrongAccept WeakReject WeakReject = false);;
assert (decide_exam WeakReject WeakAccept WeakReject = false);;

assert (decide_exam WeakReject WeakReject WeakReject = false);;

assert (decide_exam StrongReject StrongReject StrongReject = false);;

assert (decide_exam WeakAccept WeakReject StrongReject = false);;
assert (decide_exam StrongReject StrongAccept WeakReject = false);;

assert (decide_exam StrongAccept StrongReject StrongReject = false);;

