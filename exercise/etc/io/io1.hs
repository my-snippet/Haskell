import Control.Monad

main = do
    values <- forM [1,2,3,4] (\a -> do
        putStrLn $ "No." ++ show a ++ "?"
        value <- getLine
        return value)
    putStrLn "NO.1~4 each : "
    mapM putStrLn values
