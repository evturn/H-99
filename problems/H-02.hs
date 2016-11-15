-- 2 Find the last but one element of a list.

butLast' :: [a] -> a
butLast' []     = error "No end for empty lists!"
butLast' [x, _] = x
butLast' (_:xs) = butLast' xs