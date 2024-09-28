let () = print_endline "Hello, Horst!"

(* recursive summation *)
let rec sumUntilN n = 
  match n with 
  | 0 -> 0
  | _ -> n + sumUntilN (n - 1);;

let result = sumUntilN 4;;
print_int result;;
print_newline ();;

let a = 10;;
let b = 3;;
print_int (a * b) ;; (* 30 *)
print_newline ();;

a = 5;; 
print_int (a * b);; (* a unchanged *)
print_newline ();;
let k = [3.; 4.; 5.; 6.5];;
let square x = x *. x;; (* the . marks floats, it is applied on the operator here*)

let rec map f u = 
  match u with 
  | [] -> []
  | x :: u -> f x :: map f u;;

let squaredList = map square k;;

(* theres no implicit type conversion or straightforward string(x) like
calls for type(x) = int or float apparently *)
let print_float_lst lst = 
  let string_list = List.map string_of_float lst in
  let joined_string = String.concat "," string_list in
  print_endline joined_string;;

print_float_lst squaredList;;

