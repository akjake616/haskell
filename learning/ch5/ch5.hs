module Test where

-- compute (3+1)^2 


addOne :: Int -> Int
addOne x = x + 1

twoPower :: Int -> Int
twoPower x = 2 ^ x

main = print (twoPower . addOne $ 3)

-- 3 & (\x -> x + 1) & (\x -> 2 ^ x)

-- toEnum . (+1) . fromEnum $ 'a'



