triangle :: Int -> Int
triangle i
    = i*(i+1) `div` 2

triangles:: [Int]
triangles
    = map triangle [1..]

main :: IO()
main
    = putStrLn(show(take 200 triangles))