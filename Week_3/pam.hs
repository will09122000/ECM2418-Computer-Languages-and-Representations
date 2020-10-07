pam :: [a->b] -> a -> [b]
pam [] e
    = []
pam (f:fs) e
    = f e : pam fs e

main :: IO()
main
    = putStrLn(show(pam [ length, head, last ] [ 8, 9, 10 ]))