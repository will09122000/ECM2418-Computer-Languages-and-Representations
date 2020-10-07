len :: [Int] -> Int
len []
    = 0
len (x:xs)
    = 1 + len xs

main :: IO ()
main
    = putStrLn(show(len [1,2,3]))