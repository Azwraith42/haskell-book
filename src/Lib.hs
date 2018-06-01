module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = do
    putStrLn "\nChapter 3.8 -- Chapter Exercises"
    -- questionOne
    -- questionTwo
    -- buildingFunctions
    putStrLn "\nChapter 4"
    -- changingMoods
    booleanMistakes


booleanMistakes :: IO ()
booleanMistakes = do
    putStrLn "\nBoolean Mistakes"
    print $ not True && True
    print $ not (4 == 6)
    print $ (1 * 2) > 5
    print $ ["Merry"] > ["Happy"]
    print $ ['1', '2', '3'] ++ " look at me!"

changingMoods :: IO ()
changingMoods = do
    putStrLn "\nChanging Moods..."
    print $ changeMood Blah
    where
        changeMood :: Mood -> Mood
        changeMood Blah = Woot
        changeMood _ = Blah

data Mood = Blah | Woot deriving Show

buildingFunctions :: IO ()
buildingFunctions = do
    putStrLn "\nBuilding Functions"
    print $ addBang "Curry is awesome"
    print $ theFourth "Curry is awesome!"
    print $ notTail "Curry is awesome!"
    print $ letterIndex 6
    print $ rvrs "Curry is awesome"
    where
        addBang :: [Char] -> [Char]
        addBang s = s ++ "!"

        theFourth :: String -> Char
        theFourth s = s !! 4

        notTail :: [Char] -> [Char]
        notTail s = drop 9 s

        letterIndex :: Int -> Char
        letterIndex i = "Curry is awesome!" !! i

        rvrs :: String -> String
        rvrs s = let
            lstwd = drop 9 s
            scndwd = take 4 $ drop 5 s
            fstwd = take 5 s
            in
            lstwd ++ scndwd ++ fstwd

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