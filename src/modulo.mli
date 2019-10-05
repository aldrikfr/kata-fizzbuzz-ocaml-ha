open Base
type t

val apply : Int.t -> String.t -> t -> String.t

val create : Int.t * String.t -> t
