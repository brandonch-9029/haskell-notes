-- X-ary function takes X arguments
-- unary function
not :: Bool -> Bool
not True = False
not False = True

-- binary function using a 2-tuple
add :: (Int, Int) -> Int
add (x, y) = x + y

-- Using Currying to create n-ary functions, aka: Turning a function of n arguments into a function of n-1 arguments
add' :: Int -> Int -> Int
add' x y = x + y

-- Adding 1 to every entry in a list
xs :: [Int]
xs = [1,2,3]

ys :: [Int]
ys = map (add' 1) xs

-- Multiply three integers, x -> y -> z -> Output
tripleProduct :: Int -> Int -> Int -> Int
tripleProduct x y z = x*y*z

-- Why Currying? Easier to prove things with functions of only 1 variable. Flexibility in Programming. Related to lazy evaluation.
-- Basically, it allows functions to take multiple arguments in languages that only allow unary functions e.g. Haskell

-- How to implement Length' function in haskell
length' :: [a] -> Int
length' l = sum (map (const 1) l) -- Returns a list that maps a value of const 1 for every item in list l, then sums the list of ones

myList :: [Int]
myList = [1,2,3]

-- Generate the first n positive odd numbers using lambda function on x
odds :: Int -> [Int]
odds n = map (\x -> x*2 + 1) [0..n-1] -- In a list from 0 to n-1, for each x in the list, return a value of x*2 + 1 (the xth odd number)

-- Infix notation, `` by using these, we can put normal function calls in between binary arguments, kinda like x + y, but you can't add backticks to an existing symbol function like + or -
remainder :: Int
remainder = 3 `mod` 2


main :: IO ()
main =
    do
        print (odds 5)