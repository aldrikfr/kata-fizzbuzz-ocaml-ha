open Base

type t = {divisor: Int.t; message: String.t}

type rule_description = Int.t * String.t

let is_mod m n = n % m = 0

let apply n acc {divisor; message} =
  if n |> is_mod divisor then String.concat [acc; message] else acc

let create_rule (desc:rule_description) =
  let (divisor,message) = desc in
  {divisor; message}
