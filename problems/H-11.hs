-- Modify the result of problem 10 in such a way that if an element has no
-- duplicates it is simply copied into the result list. Only elements with
-- duplicates are transferred as (N E) lists.
import           Data.List

data EncodedItem a = Single a
                   | Multiple Int a
                   deriving (Eq, Show)

encode :: Eq a => [a] -> [(Int, a)]
encode xs = [(length x, head x) | x <- group xs]

encodeModified :: Eq a => [a] -> [EncodedItem a]
encodeModified = map doIt . encode
  where
    doIt (1, x) = Single x
    doIt (n, x) = Multiple n x
