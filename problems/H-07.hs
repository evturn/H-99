-- 7 Flatten a nested list structure.

data NestedList a = Elem a | List [NestedList a]

flatten' :: NestedList a -> [a]
flatten' (Elem a) = [a]
flatten' (List []) = []
flatten' (List xs) = concatMap flatten' xs