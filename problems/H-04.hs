-- 4  Find the number of elements of a list.

length' :: [a] -> Int
length' [] = 0
length' xs = foldl (\acc _ -> acc + 1) 0 xs