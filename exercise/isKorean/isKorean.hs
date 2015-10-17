import Data.List


minCharKo = 44032
maxCharKo = 55215


main = do  
    putStrLn "이름을 입력해주세요?"
    name <- getLine
    let codeOfFirstChar = (fromEnum . head) name
    let onlykorMsg = "한국인만 사용가능합니다. ( Only Korean can use this. )"
    let reStartMsg = "그럼, 다시 해보아요"
    let isKorean = isInfixOf "네"
    if (codeOfFirstChar >= minCharKo) && (codeOfFirstChar <= maxCharKo)
    then do
        putStrLn "혹시 한국분이세요? ( Are you Korean? Right? )"
        isKoreanMsg <- getLine
        if isKorean isKoreanMsg
        then (do
            putStrLn "역시, 한국분이시군요?"
            putStrLn reStartMsg
            main)
        else (do
            putStrLn onlykorMsg
            putStrLn reStartMsg
            main)            
    else putStrLn "Aren't you Korean?"
