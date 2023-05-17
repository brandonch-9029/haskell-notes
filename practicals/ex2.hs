
myList :: [Int]
myList = [1,2,3,4,5]
-- last' should return the final element of a non-empty list
-- Try implementing it using builtin functions (excluding last!) that
-- you already know about
last' :: [a] -> a
-- undefined has type a, so it always type-checks, but indicates that
-- we haven't implemented this function.
last' xs = reverse xs !! 1

-- Now try using recursion and pattern matching
-- Function that gets the second last item in a list
butlast'' :: [a] -> a
butlast'' [] = undefined
butlast'' [_] = undefined
butlast'' [x,_] = x
butlast'' (x:xs) = butlast'' xs

-- tail returns the tail of a list.
-- For example
-- tail [1, 2, 3] == [2, 3]
-- If applied to an empty list, it raises an exception

-- Write safetail, which should map the empty list to itself
-- First using a conditional expression
safetail :: [a] -> [a]
safetail x = if null x then [] else tail x

-- Now using guard expressions
safetail' :: [a] -> [a]
safetail' x
    | null x = []
    | otherwise = tail x

-- And finally using pattern matching
safetail'' :: [a] -> [a]
safetail'' [] = []
safetail'' (_:xs) = xs

-- Note that the right way to do this is using the Maybe datatype,
-- we'll see that later.


main :: IO ()
main =
    do
        print (safetail' myList)