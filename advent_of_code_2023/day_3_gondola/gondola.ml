open Fun

let parse_line y string =
  let pattern = Str.regexp "\\([0-9]+\\)\\|\\([^\\.]\\)" in
  let fmt_expr (e, x) = (e, (x, y)) in
  string |> Regex.find_all pattern |> List.map fmt_expr

let value (e, _) = int_of_string_opt e
let is_num (e, _) = is_numeric e
let is_sym (e, l) = not (is_num (e, l))
let is_gear_symbol (e, _) = e = "*"

let is_adjacent expr1 expr2 =
  let e, (x, y) = expr1
  and e', (x', y') = expr2 in
  is_between (x - String.length e', x + String.length e) x'
  && is_between (y - 1, y + 1) y'

let read_board filename =
  Core.In_channel.read_lines filename |> List.mapi parse_line |> List.flatten

let () =
  let expressions =
    "gondola.txt"
    |> Core.In_channel.read_lines
    |> List.mapi parse_line
    |> List.flatten
  in
  let symbols = expressions |> List.filter is_sym
  and numbers = expressions |> List.filter is_num in
  numbers
  |> List.filter (fun number -> List.exists (is_adjacent number) symbols)
  |> List.filter_map value
  |> List.sum
  |> string_of_int
  |> print_endline

let () =
  let expressions =
    "gondola.txt"
    |> Core.In_channel.read_lines
    |> List.mapi parse_line
    |> List.flatten
  in
  let numbers = List.filter is_num expressions in
  let find_gears expressions =
    expressions
    |> List.filter is_gear_symbol
    |> List.map (fun symbol -> List.filter (is_adjacent symbol) numbers)
    |> List.filter (fun parts -> List.length parts = 2)
  and calculate_gear_ratios gears =
    gears
    |> List.map (List.filter_map value)
    |> List.map List.product
    |> List.sum
  in
  expressions
  |> find_gears
  |> calculate_gear_ratios
  |> string_of_int
  |> print_endline
