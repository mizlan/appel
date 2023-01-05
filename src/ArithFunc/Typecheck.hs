module ArithFunc.Typecheck where

import ArithFunc.Parser (Expr (..), Fun (..), Op (..), Prog (..))
import Data.Map (Map (..))
import Data.Map qualified as M
import Data.Maybe

data EnvEntry
  = VarEntry
  | -- | how many params
    FunEntry Int
type Env = Map String EnvEntry

typeCheckExpr :: Env -> Expr -> Bool
typeCheckExpr env (Var v)
  | Just VarEntry <- M.lookup v env = True
  | otherwise = False
typeCheckExpr env (Lit i) = True
typeCheckExpr env (Bop e1 op e2) = typeCheckExpr env e1 && typeCheckExpr env e2
typeCheckExpr env (App f ps) = case M.lookup f env of
  Just (FunEntry l) | l == length ps && all (typeCheckExpr env) ps -> True
  _ -> False

typeCheck :: Prog -> Bool
typeCheck = typeCheckWithEnv mempty
 where
  typeCheckWithEnv env [] = True
  typeCheckWithEnv env ((MkFun name p b) : fs) = typeCheckExpr addFormals b && typeCheckWithEnv addFun fs
   where
    n = length p
    addFun = M.insert name (FunEntry n) env
    addFormals = foldr (`M.insert` VarEntry) env p
