%token <int> NUMBER
%token PLUS MINUS MULT DIV
%token EOF

%left PLUS MINUS
%left MULT DIV

%start <int> main

%%

main:
  | operation EOF { $1 }
  | EOF { 0 }

operation:
  | operation PLUS operation { $1 + $3 }
  | operation MINUS operation { $1 - $3 }
  | operation MULT operation { $1 * $3 }
  | operation DIV operation { $1 / $3 }
  | NUMBER { $1 }
