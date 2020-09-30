sort :: [Int] -> [Int]
sort []
    = []
sort (x:xs)
    = insert (sort xs) x

main :: IO ()
main
    = putStrLn(show(sort [3,2,1]))