{
module ArithFunc.Parser where

import qualified ArithFunc.Lexer as L
import Data.List
}

%name parse
%tokentype { L.Token }
%error { parseError }

%left '+' '-'
%left '*'
%right NEG

%token
      fun        { L.Fun }
      int        { L.IntLit $$ }
      ident      { L.Ident $$ }
      '+'        { L.Plus }
      '-'        { L.Minus }
      ','        { L.Comma }
      '*'        { L.Star }
      '('        { L.LParen }
      ')'        { L.RParen }
      '='        { L.Equals }
      '\n'       { L.Newline }

%%

program : deflistne { reverse $1 }

deflistne : def { [$1] }
          | deflistne '\n' def { $3 : $1 }

def : fun ident '(' paramlist ')' '=' exp { MkFun $2 $4 $7 }

paramlist : paramlistne { reverse $1 }
          | {- empty -} { [] }

paramlistne : ident { [$1] }
            | paramlistne ',' ident { $3 : $1 }

explist : {- empty -} { [] }
        | explistne { reverse $1 }

explistne : exp { [$1] }
          | explistne ',' exp { $3 : $1 }

exp : ident { Var $1 }
    | int { Lit $1 }
    | exp '+' exp { Bop $1 Plus $3 }
    | exp '-' exp { Bop $1 Minus $3 }
    | exp '*' exp { Bop $1 Times $3 }
    | ident '(' explist ')' { App $1 (reverse $3) }

{
data Op = Plus | Minus | Times
  deriving Show

data Expr = Var String
          | Lit Int
          | Bop Expr Op Expr
          | App String [Expr]
          deriving Show

data Fun = MkFun { name :: String, params :: [String], body :: Expr }
  deriving Show

type Prog = [Fun]

parseError :: [L.Token] -> a
parseError k = error $ "Parse error" <> show k

pl = parse . L.alexScanTokens . dropWhile (`elem` "\n\t ") . dropWhileEnd (`elem` "\n\t ")

main = getContents >>= print . pl
}
