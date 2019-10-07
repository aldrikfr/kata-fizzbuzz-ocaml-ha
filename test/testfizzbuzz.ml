open OUnit2
open Base

let play = Fizzbuzz.(play FizzBuzz)

let test_play desc expected param =
    Play.assert_string (desc ^ " rule with " ^ (Int.to_string param)) expected (play param)

let () =
  "suite FizzBuzz 1" >::: [
    test_play "default" "1" 1;
    test_play "default" "2" 2;
    test_play "modulo 3" "Fizz" 3;
    test_play "modulo 5" "Buzz" 5;
    test_play "both modulo 3 and 5" "FizzBuzz" (3 * 5)
    ]
  |> run_test_tt_main
