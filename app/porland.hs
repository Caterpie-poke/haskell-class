opeProcess new prev rest s  = if leftIsPri new prev then (s, new:prev:rest) else (reverse(prev:rest) ++ s, [new])

leftIsPri new prev = case (new, prev) of  ("*", _) -> True
                                          ("+", "-") -> True
                                          ("+", "+") -> True
                                          ("+", "*") -> False
                                          ("-", "-") -> True
                                          ("-", _) -> False

appendOpe (s, opes) = reverse(opes) ++ s

trance :: String -> String
trance = concat . intersperse " " . reverse . appendOpe . foldl tranceFunc ([], []) . words
  where tranceFunc (s, [])       "*" = (s, ["*"])
        tranceFunc (s, [])       "+" = (s, ["+"])
        tranceFunc (s, [])       "-" = (s, ["-"])
        tranceFunc (s, ope:opes) "*" = opeProcess "*" ope opes s 
        tranceFunc (s, ope:opes) "+" = opeProcess "+" ope opes s 
        tranceFunc (s, ope:opes) "-" = opeProcess "-" ope opes s 
        tranceFunc (s, opes) number = (number:s, opes)
          -- where  opeProcess new prev rest s  = if leftIsPri new prev then (s, new:prev:rest) else (reverse(rest) ++ new:s, [])
          --         where  leftIsPri new prev = case (new, prev) of ("*", _) -> True
          --                                                         ("+", "-") -> True
          --                                                         ("+", "+") -> True
          --                                                         ("+", "*") -> False
          --                                                         ("-", "-") -> True
          --                                                         ("-", _) -> False