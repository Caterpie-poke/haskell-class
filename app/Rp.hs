module Rp where

import Lib

test = "1 + 2 * 3 - 4 - 5"

conv :: String -> String
conv = foldl . func . words
    where func [] s


