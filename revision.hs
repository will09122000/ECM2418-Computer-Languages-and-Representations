data Suit = Clubs | Diamonds | Hearts | Spades
            deriving Show

pick :: Int -> [a] -> ( a, [a] )
pick n [x]
    = (x, [])
pick 0 (x:xs)
    = (x, xs)
pick n (x:xs)
    = (y, x:ys)
        where (y, ys) = pick (n-1) xs

shuffle :: [a] -> IO [a]
shuffle [x]
    = [x]
shuffle (x:xs)
    = 