import System.IO

main :: IO ()
main
    =  do 
        writeFile "test.txt" "message"
        s <- readFile "test.txt"
        putStrLn(s)