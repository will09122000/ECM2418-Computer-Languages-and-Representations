contains :: [String] -> String -> Bool
contains [] e
    = False
contains (x:xs) e
    | x == e = True
    | otherwise = contains xs e

main :: IO ()
main
    = putStrLn(show(contains ["Aa","Bb","Cc"] "Bb"))