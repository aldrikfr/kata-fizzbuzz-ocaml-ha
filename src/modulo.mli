open Base
type t

type rule_description = Int.t * String.t

val apply : Int.t -> String.t -> t -> String.t

val create_rule : rule_description -> t
