listA = [1,2,3,4]

foo1(a:b:[c]) = c

--
--

select :: [a] -> Int -> Maybe a -- implement of !!

select [] _ = Nothing
select (x:xs) 0 = Just x
select (x:xs) n = select xs (n-1)
