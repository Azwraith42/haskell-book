module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = do
    putStrLn "\nChapter 3.8 -- Chapter Exercises"
    print $ concat [[1,2,3], [4,5,6]]
    print $  (++) [1, 2, 3] [4, 5, 6]
    print $ (++) "hello" " world"
    print $ ["hello" ++ " world"]
    print $ "hello" !! 4
    print $ (!!) "hello" 4
    print $ take 4 " lovely"
    print $ take 3 "awesome"