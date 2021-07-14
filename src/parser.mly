%token <int> NUMBER
%token PLUS MINUS
%token EOF

%left PLUS MINUS

%start <int> main

%%

main:
  | operation EOF { $1 }
  | EOF { 0 }

operation:
  | operation PLUS operation { $1 + $3 }
  | operation MINUS operation { $1 - $3 }
  | NUMBER { $1 }
