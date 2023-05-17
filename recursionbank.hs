-- Takes two lists of ints, and for each pair, takes the smaller of the two. Sums all the smallest recursively
sumSmallest :: [Int] -> [Int] -> Int
sumSmallest [] [] = 0
sumSmallest [x] [y] = if x < y then x else y
sumSmallest (x:xs) (y:ys) = if x < y then x + sumSmallest xs ys else y + sumSmallest xs ys

-- Takes a list of integers, returns a list where each subsequent item is the sum of all previous items
scan :: [Integer] -> [Integer]
scan [] = []
scan [x] = [x]
scan (x:y:xs) = x : scan (x+y:xs)

-- Modified version that takes any binary operator (a -> a -> a), then scans again on a list of [a] and returns a list of [a]
scanf :: (a -> a -> a) -> [a] -> [a]
scanf _ [] = []
scanf _ [x] = [x]
scanf f (x:y:xs) = x : scanf f (x `f` y :xs)

-- If list is in ascending order, return True, otherwise return False, notice that we restrict lists to typeclass Orderable
sorted :: Ord a => [a] -> Bool
sorted [] = undefined
sorted [_] = True
sorted (x:y:z) = if x < y then sorted (y:z) else False

-- Modified version that takes any comparison operator (a -> a -> Bool)
sortedCmp :: Ord a => (a -> a -> Bool) -> [a] -> Bool
sortedCmp _ [] = undefined
sortedCmp _ [_] = True
sortedCmp f (x:y:z) = if x `f` y then sortedCmp f (y:z) else False

-- Using foldr to implement length. For a list of length 2+, start with 0, each item +1 using lambda expression
length' :: [a] -> Int
length' [] = 0
length' [_] = 1
length' (x:xs) = foldr (\_ n -> 1 + n) 0 (x:xs)

-- Using foldr to implement map
map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\x xs -> (f x):xs) []

--
data Maybe' a = Just' a | Nothing'

-- Declaring a Functor instance. Notice that the first line is the composition law, second line is identity law
instance Functor Maybe' where
    fmap f (Just' a) = Just' (f a)
    fmap f Nothing' = Nothing'

-- See lecture 7 defining a ternary tree data type
data Tree a = Leaf a
    | Node ( Tree a) a ( Tree a ) ( Tree a )
    deriving ( Eq , Show )

-- The functor instance for Tree
instance Functor Tree where
    fmap f (Leaf a) = Leaf (f a)
    fmap f (Node l a r rr) = Node (fmap f l) (f a) (fmap f r) (fmap f rr)

-- Takes a list of integers and partitions it into runs of positive and negative integers
partition :: Integral a => [a] -> [[a]]
partition [] = []
partition xs = let (positiveConsecutive, remainder) = span (>=0) xs
                   (negativeConsecutive, remainder') = span (<0) remainder
                in [positiveConsecutive, negativeConsecutive] ++ partition remainder'


-- Counts each time an element is smaller than the next element
count :: [Int] -> Int
count [] = 0
count xs = length $ filter (\(x,y) -> x < y) pairs 
    where
        pairs = zip xs (tail xs)

-- This function takes a comparison function, a list of [a], then returns an Int
countGeneral :: Ord a => (a -> a -> Bool) -> [a] -> Int
countGeneral = undefined