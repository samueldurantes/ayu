{
  open Parser
}

let digit = ['0'-'9']
let num = (digit | ['1'-'9'] digit*)
let whitespace = [' ' '\t']

rule main = parse
  | whitespace+ { main lexbuf }
  | num as n { NUMBER (int_of_string n) }
  | "+" { PLUS }
  | "-" { MINUS }
  | eof { EOF }
