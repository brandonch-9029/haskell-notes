xs :: [Int]
xs = [1,2,3,4,5]

last' :: [a] -> a
last' xs = xs !! (length xs-1)


shuffle :: [a] -> [a]
shuffle [] = []
shuffle (x:xs) = xs ++ [x]


main :: IO ()
main =
    do
        print (shuffle xs)