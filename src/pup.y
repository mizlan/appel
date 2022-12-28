{
module Main where
}

%name parse
%tokentype { Token }
%error { parseError }

%token
      while      { While }
      for        { For }
      to         { To }
      break      { Break }
      let        { Let }
      in         { In }
      end        { End }
      function   { Function }
      var        { Var }
      type       { Type }
      array      { Array }
      if         { If }
      then       { Then }
      else       { Else }
      do         { Do }
      of         { Of }
      nil        { Nil }
      comma      { Comma }
      ':'        { Colon }
      ';'        { Semicolon }
      '('        { LParen }
      ')'        { RParen }
      '['        { LBracket }
      ']'        { RBracket }
      '{'        { LBrace }
      '}'        { RBrace }
      '.'        { Dot }
      '+'        { Plus }
      '-'        { Minus }
      '*'        { Star }
      '/'        { Slash }
      '='        { Equals }
      '<>'       { Neq }
      '<'        { Less }
      '<='       { LessEq }
      '>'        { Greater }
      '>='       { GreaterEq }
      '&'        { And }
      '|'        { Or }
      ':='       { Assign }
      int        { IntLit $$ }
      str        { StringLit $$ }
      ident      { Ident $$ }

%%

program : exp              {}

dec : tydec  {}
    | vardec {}
    | fundec {}

tydec : type ident '=' ty {}

ty : ident            {}
   | '{' tyfields '}' {}
   | array of ident   {}

tyfields : {- empty -} {}
         | tyfields1   {}

tyfield : ident ':' ident {}

tyfields1 : tyfield               {}
          | tyfields1 ',' tyfield {}

fundec : function ident '(' tyfields ')' '=' exp           {}
       | function ident '(' tyfields ')' ':' ident '=' exp {}

exp : let decs in exp end  {}
    | exp '+' exp          {}
    | exp '-' exp          {}
    | exp '*' exp          {}
    | exp '/' exp          {}
    | exp '=' exp          {}
    | exp '&' exp          {}
    | exp '|' exp          {}
    | exp '<>' exp         {}
    | exp '<' exp          {}
    | exp '<=' exp         {}
    | exp '>' exp          {}
    | exp '>=' exp         {}