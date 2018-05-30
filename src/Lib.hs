module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = do
    putStrLn "\nChapter 3.8 -- Chapter Exercises"
    questionOne
    questionTwo


questionTwo :: IO ()
questionTwo = do
    putStrLn "\nQuestion Two"
    print $ concat [[1 * 6], [2 * 6], [3 * 6]] == [6,12,18]
    print $ "rain" ++ drop 2 "elbow" == "rainbow"
    print $ 10 * head [1, 2, 3] == 10
    print $ (take 3 "Julie") ++ (tail "yes") == "Jules"
    print $ concat [tail [1, 2, 3], tail [4, 5, 6], tail [7, 8, 9]] == [2,3,5,6,8,9]
    -- print $ "Jules"
    -- print $ [2,3,5,6,8,9]
    -- print $ "rainbow"
    -- print $ [6,12,18]
    -- print $ 10

questionOne :: IO ()
questionOne = do
    putStrLn "\nQuestion Once"
    print $ concat [[1,2,3], [4,5,6]]
    print $  (++) [1, 2, 3] [4, 5, 6]
    print $ (++) "hello" " world"
    print $ ["hello" ++ " world"]
    print $ "hello" !! 4
    print $ (!!) "hello" 4
    print $ take 4 " lovely"
    print $ take 3 "awesome"