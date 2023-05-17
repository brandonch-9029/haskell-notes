-- Part A
scan :: [Integer] -> [Integer]
scan [] = []
scan [x] = [x]
scan (x:y:xs) = x : scan (x+y:xs)

-- Part B
scanf :: (a -> a -> a) -> [a] -> [a]
scanf _ [] = []
scanf _ [x] = [x]
scanf f (x:y:xs) = x : scanf f (x `f` y :xs)

-- Part C
--func1 :: [Char] -> [Char]
--func2 :: Integer -> Integer -> (Integer, Integer)
--func3 :: Num a => [a] -> a

data Letter = Minuscule Char | Majuscule Char

isLowercase :: Letter -> Bool
isLowercase (Minuscule _) = True
isLowercase (Majuscule _) = False


-- 
data Maybe' a = Just' a | Nothing'

instance Functor Maybe' where
    fmap f (Just' a) = Just' (f a)
    fmap f Nothing' = Nothing'
    


main :: IO ()
main =
    do
        print (scan [1,2,3])