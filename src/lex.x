{
module Main where

import Data.Char
}

%wrapper "basic"

@reserved = while|for|to|break|let|in|end|function|var|type|array|if|then|else|do|of|nil
@escaped = \\ ( n | t | \^ a-z | 0-9{3} | \" | \\ | $white+ \\)
@ident = [a-zA-z][a-zA-Z0-9_]*
@stringlit = \" ([^\\ \"] | @escaped)* \"

tokens :-
  $white+;
  @reserved  { \(x:xs) -> read $ toUpper x : xs }
  @stringlit { \s -> StringLit s }
  0-9+       { \s -> IntLit $ read s }
  @ident     { \s -> Ident s }
  ","        { \s -> Comma }
  ":"        { \s -> Colon }
  ";"        { \s -> Semicolon }
  "("        { \s -> LParen }
  ")"        { \s -> RParen }
  "["        { \s -> LBracket }
  "]"        { \s -> RBracket }
  "{"        { \s -> LBrace }
  "}"        { \s -> RBrace }
  "."        { \s -> Dot }
  "+"        { \s -> Plus }
  "-"        { \s -> Minus }
  "*"        { \s -> Star }
  "/"        { \s -> Slash }
  "="        { \s -> Equals }
  "<>"       { \s -> Neq }
  "<"        { \s -> Less }
  "<="       { \s -> LessEq }
  ">"        { \s -> Greater }
  ">="       { \s -> GreaterEq }
  "&"        { \s -> And }
  "|"        { \s -> Or }
  ":="       { \s -> Assign }

{
data Token = While
           | For
           | To
           | Break
           | Let
           | In
           | End
           | Function
           | Var
           | Type
           | Array
           | If
           | Then
           | Else
           | Do
           | Of
           | Nil
           | Comma
           | Colon
           | Semicolon
           | LParen
           | RParen
           | LBracket
           | RBracket
           | LBrace
           | RBrace
           | Dot
           | Plus
           | Minus
           | Star
           | Slash
           | Equals
           | Neq
           | Less
           | LessEq
           | Greater
           | GreaterEq
           | And
           | Or
           | Assign
           | IntLit Int
           | StringLit String
           | Ident String
           deriving (Read, Show, Eq)


main = do
  s <- getContents
  print (alexScanTokens s)
}
