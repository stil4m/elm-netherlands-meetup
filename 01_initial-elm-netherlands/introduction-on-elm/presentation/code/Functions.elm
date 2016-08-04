addOne : Int -> Int
addOne x = x + 1

sumTwo : Int -> Int -> Int
sumTwo x y = x + y

-- sumTwo 2 3
-- > 5

addOne' x = sumTwo 1 x
addOne'' = sumTwo 1
