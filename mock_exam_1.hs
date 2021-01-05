import Data.List

mystery :: [a] -> Int
mystery xs
    = foldr (\a -> \b -> 1 + b) 0 xs

lenlist :: [a] -> Int
lenlist []
    = 0
lenlist (x:xs)
    = 1 + lenlist xs

stranger
    = strange 0
strange a []
    = a
strange a (x:xs)
    = strange (x+a) xs

smallest :: [Int] -> Int
smallest [e]
    = e
smallest xs
    = min p q
        where
        mid = length xs `div` 2
        (ps, qs) = splitAt mid xs
        p = smallest ps
        q = smallest qs

data Rose a
    = Tip a
    | Node [Rose a]

average :: Rose Int -> Int
average xs
    = addup xs `div` countup xs

addup :: Rose Int -> Int
addup (Tip x)
    = x
addup (Node xs)
    = sum (map addup xs)

countup :: Rose Int -> Int
countup (Tip x)
    = 1
countup (Node xs)
    = sum (map countup xs)

unusual :: Ord a => [a] -> a
unusual
    = last . sort

main :: IO ()
main
  = putStrLn(show(unusual [1,2,4,3]))