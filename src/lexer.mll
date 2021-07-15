{
  open Parser
}

let digit = ['0'-'9']
let num = digit+
let new_line = ['\r' '\n']
let whitespace = [' ' '\t']

rule main = parse
  | whitespace+ { main lexbuf }
  | new_line+ { main lexbuf }
  | num as n { NUMBER (int_of_string n) }
  | "+" { PLUS }
  | "-" { MINUS }
  | "*" { MULT }
  | "/" { DIV }
  | eof { EOF }
  | _ as c { failwith(Printf.sprintf "Unexpected char '%c'" c) }
