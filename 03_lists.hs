-- Lists in Haskell are linked lists

-- Boolean detector if list starts with 'a', _ is a wildcard
--startsWithA :: [Char] -> Bool
--startsWithA ['a',_,_] = True
--startsWithA _ = False

-- What if we want a list of arbitrary length? We instead use ('a':_), list constructor syntax, to build a list of any length beyond 'a', 'b' 
startsWithA :: [Char] -> Bool
startsWithA ('a':'b':_) = True
startsWithA _ = False

-- Sum the first two values of an arbitrary list of Numbers. We take a list of a and return single a, and we specify that 'a' is type Number
sumTwo :: Num a => [a] -> a
sumTwo (x:y:_) = x + y

-- Create a list of even numbers between 1 to 5 via comprehension
evenNumbers :: [Int]
evenNumbers = [x | x <- [1..5], x `mod` 2 == 0]

-- Create all possible pairs of tuples in two lists
--pairs :: [(Int, Int)]
--pairs = [(x,y) | x <- [1,2,3], y <- [5,6]]

-- Create all possible pairs where for x is 1 to 3, and y is bigger than x
yAfterX :: [(Int, Int)]
yAfterX = [(x,y) | x <- [1..3], y <- [x..3]]

-- Guards, placed on the right of the generator
-- Guard can be any function that returns a Bool
-- Pairs, but only if number x is even
pairs :: [(Int, Int)]
pairs = [(x,y) | x <- [1,2,3], even x, y <- [5,6]]

-- Using guards: Get all the factors of number n
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0] -- Give me every number between 1 to n that can divide n with no remainder

-- Is a number prime?
prime :: Int -> Bool
prime n = factors n == [1, n] -- the list returned by factors n must == [1,n] to be True, otherwise not prime so False

-- Give me all the primes between 1 to n
primes :: Int -> [Int]
primes n = [x | x <- [1..n], prime x]


main :: IO ()
main =
    do
        print (primes 6)