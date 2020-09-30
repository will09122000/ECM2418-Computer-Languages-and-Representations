insert :: [Int] -> Int -> [Int]
insert [] e
    = [e]
insert (x:xs) e
    | e < x = e:x:xs
    | otherwise = x:insert xs e

main :: IO ()
main
    = putStrLn(show(insert [1,2,3] 4))