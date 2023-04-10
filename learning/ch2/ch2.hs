data Position = Cartesian Double Double | Polar Double Double

distance :: Position -> Position -> Double

distance (Cartesian x1 y1) (Cartesian x2 y2) = sqrt ((x1-x2)^2 + (y1-y2)^2)
distance (Cartesian x1 y1) (Polar r2 a2) = 
    let x2 = r2 * cos a2
        y2 = r2 * sin a2
    in sqrt ((x1-x2)^2 + (y1-y2)^2)
distance (Polar r1 a1) (Cartesian x2 y2) = 
    let x1 = r1 * cos a1
        y1 = r1 * sin a1
    in sqrt ((x1-x2)^2 + (y1-y2)^2)
distance (Polar r1 a1) (Polar r2 a2) = 
    let x1 = r1 * cos a1
        y1 = r1 * sin a1
        x2 = r2 * cos a2
        y2 = r2 * sin a2
    in sqrt ((x1-x2)^2 + (y1-y2)^2)





--data Position = MakePosition Double Double
--distance p1@(MakePosition x1 y1) p2@(MakePosition x2 y2) = 
--    sqrt ((x1-x2)^2 + (y1-y2)^2)


{-
  distance p1 p2 = 
    let MakePosition x1 y1 = p1
        MakePosition x2 y2 = p2
    in sqrt ((x1-x2)^2 + (y1-y2)^2)
-}
{-  
 -  distance (MakePosition x1 y1) (MakePosition x2 y2) = 
        sqrt ((x1-x2)^2 + (y1-y2)^2)
-}
   
{-
 - distance p1 p2 = 
    case p1 of
        MakePosition x1 y1 -> 
            case p2 of 
                MakePosition x2 y2 -> sqrt ((x1-x2)^2+(y1-y2)^2)
-}


pa = Polar 1 3.14159
pb = Cartesian 2 0
