candidates :: [Integer]
candidates = [2..]

sieve :: [Integer] -> [Integer]
sieve [] = []
sieve (x:xs) = x : sieve [x' | x' <- xs, x' `mod` x /= 0]


main :: IO()
main =
    do
        print(take 5 (sieve candidates))