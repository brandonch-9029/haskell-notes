-- Polymorphism
-- If I have a length() function, do I care if the list i give it is [Bool] or [Char]?
-- length :: [a] -> Int (a is a placeholder for any type you can think of)
-- Parametric Polymorphism: length eats a list of values of any type a and returns an Int

-- Constraining Polymorphic functions w/ class constraint
-- e.g. (+) :: Num a => a -> a -> a
-- for any data type a that is under the Number class, a -> a -> a
-- aka ad-hoc polymorphism, Num a => a -> a -> a is an overloaded type, (+) is an overloaded function

-- I wanna create a class to encapsulate some new property of types
-- Lets define an interface that our type should support

-- I have a class foo that is any data type a, and for something to be foo, I must convert a into a Bool
class Foo a where
    isfoo :: a -> Bool
-- if a is any wildcard Int, It does not fulfill the isfoo property, so it is False
instance Foo Int where
    isfoo _ = False
-- if a is a character, it is Foo (True), if it is 'a' or 'b' or 'c'
instance Foo Char where
    isfoo x = x `elem` ['a'..'c']

-- Type definitions to improve readability
-- Lets implement an integer position in 2D
type Pos = (Int,Int)

origin :: Pos -- origin of the 2D plane
origin = (0,0)

left :: Pos -> Pos -- Given a Pos, move 1 unit to the left
left (x,y) = (x - 1, y)

-- Pair
type Pair a = (a, a)
-- Multiply the pair
mult :: Pair Int -> Int
mult (x, y) = x*y
-- duplicate a value
dup :: a -> Pair a
dup x = (x, x)

-- Now, how about creating a completely new type with specified allowed values
-- data Bool = True | False
data IsTrue = Yes | No | Perhaps

neg :: IsTrue -> IsTrue
neg Yes = No
neg No = Yes
neg Perhaps = Perhaps

-- Something more useful
data Shape = Circle Float | Rectangle Float Float
-- A shape is either a circle with one number, or a Rectangle with two numbers

-- Function that performs pattern matching
-- Given a shape, calculate the area
area :: Shape -> Float
area (Circle r) = pi * r^2
area (Rectangle x y) = x * y

-- Making data declarations polymorphic
data Maybe a = Nothing | Just a
safehead :: [a] -> Maybe a
safehead [] = Nothing
safehead (x:_) = Just x 

-- Data declarations can be recursive
data Nat = Zero | Succ Nat

plus :: Nat -> Nat -> Nat
plus Zero n = n
plus (Succ m) n = Succ (plus m n)

-- 


main :: IO ()
main =
    do
        print ()