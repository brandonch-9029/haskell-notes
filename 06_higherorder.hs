-- Higher order functions do either or both of these:
-- Functions that take one or more functions as arguments
-- Returns a function as its result

-- map
-- applies a function to all elements in a list
-- map (+1) [1,2,3]
-- outputs: [2,3,4]

-- filter
-- select elements from a list that satisfy a predicate
-- filter (>10) [1..40]
-- outputs everything from 11 to 40

-- any (odd) [2,4,6]
-- outputs: False, because there are no odd in the list

-- all (odd) [2,4,6]
-- outputs: False, because all items in the list must be odd

-- takeWhile (even) [2,4,6,7,8]
-- output: [2,4,6]




main :: IO ()
main =
    do
        print ()