-- 6 Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

palindrome :: Eq a => [a] -> Bool
palindrome [] = True
palindrome xs = xs == (reverse xs)