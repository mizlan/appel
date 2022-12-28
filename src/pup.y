{
module Pup.Parser where

import qualified Pup.Lexer as L
}

%name parse
%tokentype { L.Token }
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
      while      { L.While }
      for        { L.For }
      to         { L.To }
      break      { L.Break }
      let        { L.Let }
      in         { L.In }
      end        { L.End }
      function   { L.Function }
      var        { L.Var }
      type       { L.Type }
      array      { L.Array }
      if         { L.If }
      then       { L.Then }
      else       { L.Else }
      do         { L.Do }
      of         { L.Of }
      nil        { L.Nil }
      ','        { L.Comma }
      ':'        { L.Colon }
      ';'        { L.Semicolon }
      '('        { L.LParen }
      ')'        { L.RParen }
      '['        { L.LBracket }
      ']'        { L.RBracket }
      '{'        { L.LBrace }
      '}'        { L.RBrace }
      '.'        { L.Dot }
      '+'        { L.Plus }
      '-'        { L.Minus }
      '*'        { L.Star }
      '/'        { L.Slash }
      '='        { L.Equals }
      '<>'       { L.Neq }
      '<'        { L.Less }
      '<='       { L.LessEq }
      '>'        { L.Greater }
      '>='       { L.GreaterEq }
      '&'        { L.And }
      '|'        { L.Or }
      ':='       { L.Assign }
      int        { L.IntLit $$ }
      str        { L.StringLit $$ }
      ident      { L.Ident $$ }

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
data Var = SimpleVar String
         | FieldVar String Var
         | SubscriptVar String Expr

data Expr = VarExp Var
          | NilExp
          | IntExp
          | StringExp String
          | CallExp { func :: String, args :: [Expr] }
          | OpExp { left :: Expr, op :: Op, right :: Expr }
          | RecordExp { fields :: [(String, Expr)], typ :: String }
          | SeqExp [Expr]
          | AssignExp Var Expr
          | IfExp { test :: Expr, doThen :: Expr, doElse :: Expr }
          | WhileExp { test :: Expr, body :: Expr }
          | ForExp { var :: Symbol, 

parseError :: [L.Token] -> a
parseError _ = error "Parse error"

main = getContents >>= print . parse . alexScanTokens
}
