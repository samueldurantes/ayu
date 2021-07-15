open Lexing

let file = open_in("calc.ayu")

let () = {
  from_channel(file)
  |> Parser.main(Lexer.main)
  |> string_of_int
  |> print_endline
}
