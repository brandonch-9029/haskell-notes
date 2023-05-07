-- Polymorphism
-- If I have a length() function, do I care if the list i give it is [Bool] or [Char]?
-- length :: [a] -> Int (a is a placeholder for any type you can think of)
-- Parametric Polymorphism: length eats a list of values of any type a and returns an Int

-- Constraining Polymorphic functions w/ class constraint
-- e.g. (+) :: Num a => a -> a -> a
-- for any data type a that is under the Number class, a -> a -> a
-- aka ad-hoc polymorphism, Num a => a -> a -> a is an overloaded type, (+) is an overloaded function


main :: IO ()
main =
    do
        print ()