let empty = ""

let is_empty s = String.length s = 0

let apply_if_empty n acc = if is_empty acc then Int.to_string n else acc
