both f g xs
    = (map f . map g) xs

strange
    = map (\(x,y) -> (y,x))

strange :: (x, y) -> (y, x)
strange (x, y)
    = (y, x)

stuff xs y
    = if null xs then
        [ y ]
    else if y < head xs
        y : xs
    else
        head xs : stuff (tail xs) y 

stuff [] y
    = [ y ]
stuff (x:xs) y
    | y < x = y:x:xs
    | otherwise = x : stuff xs y

mash :: ([a],[b]) -> [(a,b)]
mash []
    = ([], [])
mash ((a:as), (b:bs))
    = (a, b) ++ mash (as, bs)

mash :: ([a],[b]) -> [(a,b)]
mash []
    = ([], [])
mash ((a:as), (b:bs))
    = (a, b) : zip as bs


main :: IO()
main
    = putStrLn(show(strange [1, 2]))