open Fun

type seed = Range.t [@@deriving show]
type mapping = Mapping of Range.t * int [@@deriving show]
type table = mapping list list [@@deriving show]
type almanac = seed list * table [@@deriving show]

let _NUM = Str.regexp "[0-9]+"
and _EOL = Str.regexp "\n"
and _EOL2 = Str.regexp "\n\n"

let rec chunk_pairs = function
  | x :: y :: rest -> (x, y) :: chunk_pairs rest
  | _ -> []

let parse_seeds rows =
  rows
  |>| List.concat_map (List.filter_map int_of_string_opt)
  |>| chunk_pairs
  |>| List.sort compare
  |>| List.map (fun (x, y) -> Range.make (x, x + y))
  |>| Range.union_list
  |>| List.sort compare

let parse_triple = function
  | [ dst; src; margin ] ->
      let range = Range.make (src, src + margin)
      and offset = dst - src in
      Mapping (range, offset)
  | _ -> failwith "illegal tuple"

let parse_mapping = List.filter_map int_of_string_opt >> parse_triple

let parse_group text =
  text
  |>| Str.split _EOL
  |>| List.map (Regex.find_all _NUM >> List.rev)
  |>| List.filter (fun x -> List.length x > 0)

let parse_groups = function
  | head :: tail -> begin
      let seeds = parse_seeds head
      and table = List.map (List.map parse_mapping) tail in
      (seeds, table)
    end
  | _ -> failwith "illegal"

let parse_almanac text : almanac =
  text |>| Str.split _EOL2 |>| List.map parse_group |>| parse_groups
