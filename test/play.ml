open OUnit2
open Base

let assert_string desc expected result =
    desc >:: (fun ctxt -> assert_equal ~cmp:String.equal ~printer:Fn.id ~ctxt expected result)

