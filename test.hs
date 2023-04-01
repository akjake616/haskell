prod :: Int -> Int -> Int
prod x y = x*y
--
checkLocal :: String -> String

checkLocal ip =
  if ip ==  "192.168.50.100"
    then "it's localhost"
    else "it's not localhost"
--
checkLucky :: Int -> [Char]
 
checkLucky ans
  | ans == 1 = "you are lucky"
  | ans == 2 = "you are not so lucky"
  | otherwise = "you are not lucky"
--
initials :: String -> String -> String
initials firstName lastName = if firstName == "" || lastName == ""
                              then "error"
                              else let x = head firstName
                                       y = head lastName 
                                   in [x] ++ "." ++ [y] ++ "."

--
specialAge :: Int -> [Char]
speicalAge 1 = "one year old!"
specialAge 10 = "ten years old!"
specialAge age = "not so special... you are jsut " ++ show age ++ " years old."
--
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)
--
square :: Int -> Int 
square x = x*x
--

