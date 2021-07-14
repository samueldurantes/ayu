let () = {
  Lexing.from_string("1 + 3 - 2")
  |> Parser.main(Lexer.main)
  |> string_of_int
  |> print_endline
}
