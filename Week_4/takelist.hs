takelist :: Int -> [a] -> [a]
takelist 0 xs
    = []
takelist n []
    = []
takelist n (x:xs)
    = x : takelist (n-1) xs

main :: IO()
main
    -- = putStrLn(show(takelist 4 ['A','B','C','D','E','F']))
    = putStrLn(show(takelist 20 [1..]))