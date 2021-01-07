contains :: Eq => a -> [a] -> Bool
contains e xs
    = if xs == [] then
        False
    else
        e = (head xs) || contains e (tail xs)