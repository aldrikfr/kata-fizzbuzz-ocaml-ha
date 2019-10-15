open Base

type t = {divisor: Int.t; message: String.t}

type rule_description = Int.t * String.t

let is_mod m n = n % m = 0

let apply n acc rule =
  if n |> is_mod rule.divisor then String.concat [acc; rule.message] else acc

let create_rule (divisor, message) = {divisor; message}
