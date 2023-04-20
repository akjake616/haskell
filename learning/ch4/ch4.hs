module Test where

addOne :: Int -> Int
addOne x = x + 1

rep :: (Int,a) -> [a]
rep (0,_) = []
rep (n,x) = x : rep (n-1,x)

giveMeFive :: [(Int,a)] -> [a]
giveMeFive [] = []
giveMeFive ((i,x) : xs) = 
    if rem i 5  == 0 then x : giveMeFive xs
                     else giveMeFive xs

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ _ [] = []
zipWith' _ [] _ = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

{-
giveMeFive :: [a] -> [a]
giveMeFive xs = giveMeFiveHelper 0 xs  

giveMeFiveHelper :: Int -> [a] -> [a]
giveMeFiveHelper _ [] = []
giveMeFiveHelper i (x:xs) = 
    if rem i 5 == 0 then x : giveMeFiveHelper (i+1) xs
                    else giveMeFiveHelper (i+1) xs  
-}

--main = print (giveMeFive (zip [0..] [0..100]))
main = print (zipWith' (*) [1,2,3] [2,4,6])
