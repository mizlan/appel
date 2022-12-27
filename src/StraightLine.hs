{-# LANGUAGE PatternSynonyms #-}

module StraightLine where

import Control.Monad
import Data.Foldable
import Data.Maybe

type Id = String

data BinOp = Plus | Minus | Times | Div

data Stm
        = CompoundStm Stm Stm
        | Id := Exp
        | PrintStm [Exp]

data Exp
        = IdExp Id
        | NumExp Int
        | OpExp Exp BinOp Exp
        | EseqExp Stm Exp

(>|>) = CompoundStm
infixr 7 >|>

pattern AssignStm a b <- a := b

prog :: Stm
prog =
        "a" := OpExp (NumExp 5) Plus (NumExp 3)
    >|> "b" := EseqExp (PrintStm [IdExp "a", OpExp (IdExp "a") Minus (NumExp 1)])
                       (OpExp (NumExp 10) Times (IdExp "a"))
    >|> PrintStm [IdExp "b"]

maxArgs :: Stm -> Int
maxArgs (CompoundStm a b) = max (maxArgs a) (maxArgs b)
maxArgs (PrintStm es) = max (length es) (maximum $ maxArgsE <$> es)
maxArgs (AssignStm ident e) = maxArgsE e

maxArgsE :: Exp -> Int
maxArgsE (OpExp e1 o e2) = max (maxArgsE e1) (maxArgsE e2)
maxArgsE (EseqExp s e) = max (maxArgs s) (maxArgsE e)
maxArgsE _ = 0

interp :: Stm -> IO ()
interp = void . flip interpStm []

type Table = [(Id, Int)]

interpStm :: Stm -> Table -> IO Table
interpStm (CompoundStm a b) t = interpStm a t >>= interpStm b
interpStm (PrintStm es) t =
        foldlM
                ( \t e -> do
                        (i, t') <- interpExp e t
                        print i
                        pure t'
                )
                t
                es
interpStm (AssignStm ident e) t = do
        (i, t') <- interpExp e t
        pure $ (ident, i) : t'

interpExp :: Exp -> Table -> IO (Int, Table)
interpExp (IdExp i) t = pure (fromJust $ lookup i t, t)
interpExp (NumExp n) t = pure (n, t)
interpExp (EseqExp s e) t = interpStm s t >>= interpExp e
interpExp (OpExp e1 op e2) t = do
        (l, t') <- interpExp e1 t
        (r, t'') <- interpExp e2 t'
        pure (tOp op l r, t'')
    where
        tOp Times = (*)
        tOp Plus = (+)
        tOp Minus = (-)
        tOp Div = div
