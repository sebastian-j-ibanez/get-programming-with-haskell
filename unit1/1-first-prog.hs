-- Email drafter

main :: IO()
main = do
  print "Who is the email for?"
  recipient <- getLine
  print "What is the title?"
  title <- getLine
  print "Who is the author?"
  author <- getLine
  print $ createEmail recipient title author

createEmail :: String -> String -> String -> String
createEmail recipient title author = toPart recipient <> bodyPart title <> signPart author

toPart :: String -> String
toPart recipient = "Dear " <> recipient <> ",\n"

bodyPart :: String -> String
bodyPart title = "Thanks for buying " <> title <> ".\n"

signPart :: String -> String
signPart author = "Thanks,\n" <> author
