import System.Directory

main :: IO ()
main
    =  do
        files <- listDirectory "/"
        putStrLn (show files)