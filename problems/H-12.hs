-- Decode a run-length encoded list generated as specified in problem 11.
-- Construct its uncompressed version.
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

decodeModified :: [EncodedItem a] -> [a]
decodeModified = foldr go []
  where
    go (Single x)     xs = x : xs
    go (Multiple 0 x) xs = xs
    go (Multiple n x) xs = x : go (Multiple (n -1) x) xs
