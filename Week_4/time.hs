import Data.Time

main :: IO ()
main
    = do
        now <- getCurrentTime
        tz  <- getTimeZone now
        let lt = utcToLocalTime tz now
        let (year, month, day) = toGregorian (localDay lt)
        putStrLn (show year)
        putStrLn (show month)
        putStrLn (show day)