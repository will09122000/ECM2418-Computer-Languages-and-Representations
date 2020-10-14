import Data.List

isSolution :: (Int, Int, Int, Int) -> [Int] -> Bool
isSolution (t1, t2, t3, t4) [i1, i2, i3, i4, i5, i6, i7, i8, i9]
    = t1 == i1+i2+i4+i5
    && t2 == i2+i3+i5+i6
    && t3 == i4+i5+i7+i8 
    && t4 == i5+i6+i8+i9

main :: IO()
main
    -- = putStrLn(show(isSolution (22, 21, 22, 13) [4,6,5,9,3,7,8,2,1]))
    = putStrLn(show((filter (isSolution (22, 21, 22, 13)) (permutations [1..9]))))