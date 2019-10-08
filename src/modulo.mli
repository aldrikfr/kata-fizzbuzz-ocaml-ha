open Base
type t

type user_description = Int.t * String.t

val apply : Int.t -> String.t -> t -> String.t

val create_rule : user_description -> t
