let expr = "2 + 5 * 4 / 5"

let () = {
  Lexing.from_string(expr)
  |> Parser.main(Lexer.main)
  |> string_of_int
  |> print_endline
}
