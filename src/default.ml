let empty = ""

let is_empty s = String.length s = 0

let return_if_no_answer n acc = if is_empty acc then Int.to_string n else acc
