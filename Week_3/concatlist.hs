concatlist :: [[a]] -> [a]
concatlist []
    = []
concatlist (xs:xss)
    = xs ++ concatlist xss

concatlist_better :: [[a]] -> [a]
concatlist_better xss
    = foldr (++) [] xss

main :: IO()
main
    = putStrLn(show(concatlist_better [[1,2],[3],[4]]))