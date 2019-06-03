module Hoge where

import Lib

hello = "Hello, Haskell"

rep::(Num i, Ord i,Num a) => i -> a -> [a]
rep n x
  | n <= 0 = []
  | otherwise = x:(rep (n-1) (x-1))


