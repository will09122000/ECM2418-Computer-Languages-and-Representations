isVowel :: Char -> Bool
isVowel 'a'
    = True
isVowel 'e'
    = True
isVowel 'i'
    = True
isVowel 'o'
    = True
isVowel 'u'
    = True
isVowel x
    = False

vowels :: String -> String
vowels []
    = []
vowels (c:cs)
    | isVowel c = c:vowels cs
    | otherwise = vowels cs

vowels_better :: String -> String
vowels_better xs
    = filter isVowel xs

main :: IO()
main
    = putStrLn(show(vowels_better "aeios"))