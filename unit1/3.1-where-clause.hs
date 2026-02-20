-- Writing my own where clause.

sumSquareOrSquareSum x y = max sumSquare squareSum
  where
    sumSquare = x ^ 2 + y ^ 2
    squareSum = (x + y) ^ 2
