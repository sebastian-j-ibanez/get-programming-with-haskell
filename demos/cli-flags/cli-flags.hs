-- Haskell demo of parsing CLI flags

import GHC.Internal.System.Environment

main :: IO ()
main = do
  args <- getArgs
  let message = case (args) of
        (arg : _) -> parseArg arg
        _ -> "error: expected 1 argument"
  putStrLn message

parseArg arg
  | arg == "-b" || arg == "--bbb" = bMessage
  | arg == "-h" || arg == "--help" = helpMessage
  | arg == "-v" || arg == "--version" = versionMessage
  | otherwise = invalidMessage

bMessage = "bbb"

versionMessage = "v0.0.1"

helpMessage =
  "CLI demo\n\
  \Haskell demo of parsing CLI flags\n\n\
  \Usage: cli-demo <flag>\n\
  \Flags:\n\
  \    -b, --bbb        Print 'b' and exit.\n\
  \    -h, --help       Print this help message.\n\
  \    -v, --version    Print version number.\n\
  \"

invalidMessage = "error: invalid flag, run this program with -h or --help to see flag details."
