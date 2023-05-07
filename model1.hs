-- Part A
scan :: [Integer] -> [Integer]
scan [] = []
scan [x] = [x]
scan (x:y:z) = x : scan (x+y:z)

-- Part B
scanf :: (a -> a -> a) -> [a] -> [a]
scanf _ [] = []
scanf _ [x] = [x]
scanf j (x:y:z) = x : scanf j (x `j` y :z)

-- Part C
--func1 :: [Char] -> [Char]
--func2 :: Integer -> Integer -> (Integer, Integer)
--func3 :: Num a => [a] -> a

data Letter = Minuscule Char | Majuscule Char

isLowercase :: Letter -> Bool
isLowercase (Minuscule _) = True
isLowercase (Majuscule _) = False

main :: IO ()
main =
    do
        print (scan [1,2,3])