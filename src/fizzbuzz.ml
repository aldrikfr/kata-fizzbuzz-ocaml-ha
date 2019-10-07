open Base

type t =
  | FizzBuzz
  | FizzBuzzBang

let description_from = function
  | FizzBuzz     -> [(3, "Fizz"); (5, "Buzz")             ]
  | FizzBuzzBang -> [(3, "Fizz"); (5, "Buzz"); (7, "Bang")]

let play game_kind number =
  game_kind
  |> description_from
  |> List.map  ~f: Modulo.create_rule
  |> List.fold ~f:(Modulo.apply number) ~init:Default.empty
  |> Default.return_if_no_answer number
