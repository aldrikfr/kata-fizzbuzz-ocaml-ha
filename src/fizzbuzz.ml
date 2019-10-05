open Base
module D = Default
module M = Modulo

type t = FizzBuzz | FizzBuzzBang

let data_from = function
  | FizzBuzz ->
      [(3, "Fizz"); (5, "Buzz")]
  | FizzBuzzBang ->
      [(3, "Fizz"); (5, "Buzz"); (7, "Bang")]

let play conf n =
  data_from conf
  |> List.map ~f:M.create
  |> List.fold ~f:(M.apply n) ~init:D.empty
  |> D.apply_if_empty n
