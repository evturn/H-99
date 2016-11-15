-- 5 Reverse a list.

reverse' :: [a] -> [a]
reverse' [] = []
reverse' xs = foldl (\acc x -> x : acc) [] xs