-- 1 Find the last element of a list.

last' :: [a] -> a
last' []     = error "No end for empty lists!"
last' [x]    = x
last' (_:xs) = last' xs