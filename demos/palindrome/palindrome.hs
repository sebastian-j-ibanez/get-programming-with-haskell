-- Palindrome checker

checkPalindrome :: String -> IO ()
checkPalindrome word = do
  let conclusion =
        if (word == reverse word)
          then "is a palindrome"
          else "is not a palindrome"
  putStrLn $ word <> " " <> conclusion
