module Main where

import ArithFunc.Parser
import ArithFunc.Typecheck
import Control.Monad
import System.Directory
import System.FilePath

main = do
  let dir = "arithfunc"
  files <- listDirectory dir
  forM_ files $ \f -> do
    let p = dir </> f
    putStrLn f
    c <- readFile p
    let ast = pl c
    print ast
    print $ typeCheck ast
