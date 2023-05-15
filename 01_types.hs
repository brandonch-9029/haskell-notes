import Data.Data (typeOf)

-- Remember, in Haskell, types always start with Uppercase, variables always start lowercase

x :: Int -- small integer
x = 6

y :: Integer -- arbitrary size of integer, could be massive 
y = 3^10

z :: Char -- character, denoted with single quotes 'x'
z = 'a'

q :: String -- string, denoted by double quotes "y"
q = "cantillon"

type MyDefString = [Char] -- defining my own type MyDefString as a list of characters
t :: MyDefString
t = "hello"

u :: Double -- double, aka number with a decimal place
u = 3.5

h :: Double -- fromIntegral converts an Int into a Num
h = u + fromIntegral x

listx :: [Int] -- List of Ints
listx = [1,2,3]

listlistx :: [[Int]] -- List of Lists with Ints inside
listlistx = [[1,2],[3,4]]

tuple :: (Int, Char, Int) -- defining a 3-tuple that contains int, char, int. I explicitly say this tuple only contains 3 items
tuple = (5, 'x', 7)


-- data MyBool = True | False -- Reimplementing the Bool datatype: Bool is either True or False
    -- deriving Show

xor :: (Bool, Bool) -> Bool -- function xor takes tuple of two bools, returns a bool
xor (False, False) = False
xor (False, True) = True
xor (True, False) = True
xor (True, True) = False



main :: IO ()
main =
    do
        print (xor (True, False))