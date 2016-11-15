-- 3 Find the K'th element of a list. The first element in the list is number 1.

elementAt' :: [a] -> Int -> a
elementAt' (x:_) 1  = x
elementAt' [] _     = error "This goddamn list is empty."
elementAt' (_:xs) n
  | n < 1            = error "Nah son, 1 is the lowest."
  | otherwise        = elementAt' xs (n - 1)