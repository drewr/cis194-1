fun1 :: [Integer] -> Integer
fun1 []     = 1
fun1 (x:xs)
    | even x    = (x - 2) * fun1 xs
    | otherwise = fun1 xs

-- Idiomatic implementation
fun1' :: [Integer] -> Integer
fun1' = product . map (flip (-) 2) . filter even

fun2 :: Integer -> Integer
fun2 1 = 0
fun2 n | even n    = n + fun2 (n `div` 2)
       | otherwise = fun2 (3 * n + 1)

-- Idiomatic implementation
fun2' :: Integer -> Integer
fun2' = sum . filter even . takeWhile (/= 1) . iterate f
    where f x = if even x then x `div` 2 else 3 * x + 1
