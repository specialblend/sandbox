open Fun

let parse_line str =
  let colon = Str.regexp ":" in
  let pipe = Str.regexp "|" in
  let space = Str.regexp "[ ]+" in
  str
  ->| Str.split colon
  ->| List.nth 1
  ->| Str.split pipe
  ->| List.map (Str.split space)
  ->| fun [ left; right ] -> (left, right)

let points n = int_of_float (2.0 ** float_of_int (n - 1))

let count_wins (left, right) =
  left ->| List.filter (fun card -> right ->| List.mem card) ->| List.length

let _ =
  "cards.txt"
  ->| Core.In_channel.read_lines
  ->| List.map (parse_line ->. count_wins ->. points)
  ->| List.sum
  ->| string_of_int
  ->| print_endline

let _ =
  let winning_cards =
    "cards.txt"
    ->| Core.In_channel.read_lines
    ->| List.map (parse_line ->. count_wins)
  in
  let counter = Array.make (List.length winning_cards) 1 in
  let count_copies counter (i, win_count) =
    let n = counter.(i) in
    let r = (i + 1, i + win_count) in
    counter ->| Array.update_range (fun v -> v + n) r
  in

  winning_cards
  ->| List.mapi pair
  ->| List.fold_left count_copies counter
  ->| Array.sum
  ->| string_of_int
  ->| print_endline
