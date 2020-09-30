set :: [String] -> Bool
set []
    = True
set (x:xs)
    | contains xs x = False
    | otherwise = set xs

main :: IO ()
main
    = putStrLn(show(set ["Aa","Bb","Cc"]))