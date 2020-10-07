largest :: [Int] -> Int
largest [x] 
    = x
largest (x:xs)
    = max x (largest xs)

main :: IO ()
main
    = putStrLn(show(largest [1,2,3]))