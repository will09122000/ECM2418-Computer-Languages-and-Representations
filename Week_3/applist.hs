applist :: [a] -> [a] -> [a]
applist [] ys
    = ys
applist (x:xs) ys
    = x: applist xs ys

applist_better :: [a] -> [a] -> [a]
applist_better xs ys
    = foldr (:) ys xs

main :: IO()
main
    = putStrLn(show(applist_better [1,2,3] [4,5,6]))
