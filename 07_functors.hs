-- Type classes, are interfaces that constrain the polymorphism of functions
-- (+) :: Num a => a -> a -> a
-- (<) :: Ord a => a -> a -> Bool

-- Num: Numeric Type
-- Eq: Equality Type
-- Ord: Orderable Type
-- Functor: Mappable Type
-- Foldable: Foldable Type

-- fmap' :: Functor f => (a -> b) -> f a -> f base

-- We care about functors because it allows us to use built-in functions on any kind of data structure or container as long as as we define it



main :: IO ()
main =
    do
        print ()