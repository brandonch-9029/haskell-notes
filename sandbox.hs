negative :: Int -> Int
negative x = -x

main :: IO ()
main =
    do
        print (negative 100)