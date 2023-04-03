let rec get op = 
  let input = read_line () in
  match input with 
  | "+" -> get (+.)
  | "-" -> get (-.)
  | x -> (op, float_of_string x)

let rec teca op acc =
  let _ = print_endline (string_of_float acc) in
  let (nop, x) = get op in 
  teca nop (nop acc x) 
   

let () = teca (+.) 0.
