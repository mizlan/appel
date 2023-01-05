{
module ArithFunc.Lexer where

import Data.Char
}

%wrapper "basic"

@ident = [a-zA-z][a-zA-Z0-9_]*

$nonnlws = $white # \n

tokens :-
  $nonnlws+;
  \n $white*                 { \s -> Newline }
  "fun"                      { \s -> Fun }
  0-9+                       { \s -> IntLit $ read s }
  @ident                     { \s -> Ident s }
  "("                        { \s -> LParen }
  ")"                        { \s -> RParen }
  "+"                        { \s -> Plus }
  "-"                        { \s -> Minus }
  "*"                        { \s -> Star }
  "="                        { \s -> Equals }
  ","                        { \s -> Comma }

{
data Token = Fun
           | LParen
           | RParen
           | Plus
           | Minus
           | Star
           | Equals
           | IntLit Int
           | Ident String
           | Newline
           | Comma
           deriving (Show, Eq)


main = do
  s <- getContents
  print (alexScanTokens s)
}
