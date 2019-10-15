open Base

type t = FizzBuzz | FizzBuzzBang

let description_from = function
  | FizzBuzz ->
      [(3, "Fizz"); (5, "Buzz")]
  | FizzBuzzBang ->
      [(3, "Fizz"); (5, "Buzz"); (7, "Bang")]

let apply_rule_on n acc desc = Modulo.( desc |> create_rule |> (apply n acc) )

let play game_kind number =
  description_from game_kind
  |> List.fold ~f:(apply_rule_on number) ~init:Default.empty
  |> Default.return_if_no_answer number
