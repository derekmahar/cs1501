module Main where

import System.IO

main = do
  input <- readFile "input.txt"
  writeFile "output.txt" (reverse input)
