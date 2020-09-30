mirror :: Tree -> Tree
mirror Tip
    = Tip
mirror (Node t x u)
    = Node (mirror u) x (mirror t)

main :: IO ()
main
    = putStrLn(show(mirror(Node Tip 42 (Node Tip 12 Tip))))