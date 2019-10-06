open Base
module D = Default
module M = Modulo

type t = FizzBuzz | FizzBuzzBang

let data_from = function
  | FizzBuzz ->
      [(3, "Fizz"); (5, "Buzz")]
  | FizzBuzzBang ->
      [(3, "Fizz"); (5, "Buzz"); (7, "Bang")]

let create_modulo_rules = List.map ~f:M.create

let apply_rules_on n = List.fold ~f:(M.apply n) ~init:D.empty

let play conf number =
  data_from conf
  |> create_modulo_rules
  |> apply_rules_on number
  |> D.apply_if_empty number
