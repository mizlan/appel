{
module Pup.Parser where

import Pup.Lexer
}

%name parse
%tokentype { Token }
%error { parseError }

%right of
%nonassoc then
%nonassoc else
%nonassoc do
%nonassoc ':='
%left '&' '|'
%nonassoc '<' '<=' '>' '>=' '=' '<>'
%left '+' '-'
%left '*' '/'
%left NEG

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
      ','        { Comma }
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

decs : {- empty -} {}
     | decs dec    {}

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

vardec : var ident ':=' exp           {}
       | var ident ':' ident ':=' exp {}

fundec : function ident '(' tyfields ')' '=' exp           {}
       | function ident '(' tyfields ')' ':' ident '=' exp {}

lvalue : ident              {}
       | lvaluei            {}

lvaluei : ident '.' ident     {}
        | lvaluei '.' ident   {}
        | ident '[' exp ']'   {}
        | lvaluei '[' exp ']' {}

expmany : {- empty -}     {}
        | expmany ',' exp {}

expseqi : exp ';' exp expseqii {}

expseqii : {- empty -} {}
         | ';' exp     {}

exp : str                                {}
    | int                                {}
    | nil                                {}
    | lvalue                             {}
    | lvalue ':=' exp                    {}
    | ident '(' expmany ')'              {}
    | '(' expseqi ')'                    {}
    | ident '{' tyfields '}'             {}
    | ident '[' exp ']' of exp           {}
    | if exp then exp                    {}
    | if exp then exp else exp           {}
    | while exp do exp                   {}
    | for ident ':=' exp to exp do exp   {}
    | break                              {}
    | let decs in exp end                {}
    | '-' exp %prec NEG                  {}
    | exp '+' exp                        {}
    | exp '-' exp                        {}
    | exp '*' exp                        {}
    | exp '/' exp                        {}
    | exp '=' exp                        {}
    | exp '&' exp                        {}
    | exp '|' exp                        {}
    | exp '<>' exp                       {}
    | exp '<' exp                        {}
    | exp '<=' exp                       {}
    | exp '>' exp                        {}
    | exp '>=' exp                       {}

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

main = getContents >>= print . parse . alexScanTokens
}
