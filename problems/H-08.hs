-- 8 Eliminate consecutive duplicates of list elements.

compress' :: String -> String
compress' [] = []
compress' (x:xs) = x : (compress' $ dropWhile (== x) xs)