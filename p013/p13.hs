module Main (main) where

import System.IO





fileloop :: Handle -> Integer -> IO ()
fileloop inh sum = do
    ineof <- hIsEOF inh
    if ineof
        then putStrLn (show sum)
        else do
            inpStr <- hGetLine inh
            fileloop inh (sum + (read inpStr))
        

main :: IO ()
main = do
    inh <- openFile "data" ReadMode
    fileloop inh 0
    hClose inh
