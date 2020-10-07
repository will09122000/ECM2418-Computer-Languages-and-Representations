applist :: [a] -> [a] -> [a]
applist xs ys
    = foldr (:) ys xs

revlist :: [a] -> [a]
revlist []
    = []
revlist (x:xs)
    = applist (revlist xs) [x]

revlist_better :: [a] -> [a]
revlist_better []
    = []
revlist_better (x:xs)
    = (revlist_better xs) ++ [x]

revlist_best :: [a] -> [a]
revlist_best xs
    = foldr tack [] xs

tack :: a -> [a] -> [a]
tack x xs
    = xs ++ [x]

main :: IO()
main
    = putStrLn(show(revlist_best [1,2,3]))