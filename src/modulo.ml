open Base

type t = {divisor: Int.t; message: String.t}

let is_mod m n = n % m = 0

let apply n acc {divisor; message} =
  if n |> is_mod divisor then String.concat [acc; message] else acc

let create_rule (divisor,message) = {divisor; message}
