-- Advice for writing recursive functions
-- 1. Define the type, 2. enumerate the cases
-- 3. Define the simple/base cases 
-- 4. Define the reduction of other cases 

-- Function that removes n elements from a list
--myDrop :: Int -> [a] -> [a]
--myDrop 0 [] = []
--myDrop 0 (x:xs) = x:xs
--myDrop n [] = []
--myDrop n (x:xs) = myDrop (n-1) xs

-- Cleaning up repeat lines of code
myDrop :: Int -> [a] -> [a]
myDrop _ [] = []
myDrop 0 xs = xs
myDrop n (x:xs) = myDrop (n-1) xs

-- Length function
--myLength :: [a] -> Int
--myLength [] = 0
--myLength (x:xs) = 1 + myLength xs -- Return 1 + the length function on the tail xs

-- So we have seen Linear Recursion: Function calls itself until base case (single self reference)

-- There is also Multiple Recursion
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

-- Direct Recursion

-- Mutual Recursion
-- See recursion lecture slide 16 for example of even odd functions calling each other recursively


-- Tail recursion
product' :: Num a => [a] -> a
product' xs = loop xs 1
    where 
        loop [] n = n 
        loop (x:xs) n = loop xs (x * n)

main :: IO ()
main =
    do
        print (product' [2,2,3])