import System.IO

prepend :: Int -> [Int] -> [Int]
prepend 0 xs = xs
prepend n xs = prepend (n-1) (0:xs)

append :: Int -> [Int] -> [Int]
append 0 xs = xs
append n xs = append (n-1) (xs ++ [0])

main = 
    do
    max <- readLn :: IO Int
    putStrLn (show max)
    putStrLn (show (prepend max []))
