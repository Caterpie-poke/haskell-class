data TrafficLight = Red | Yellow | Green

-- instance Show TrafficLight where
--     show Red = "Red light"
--     show Yellow = "Yellow light"
--     show Green = "Green light"

elem1 :: Eq a => a -> [a] -> Bool
elem1 y xs = any (y==) xs

instance Eq TrafficLight where
    Red == Red = True
    Green == Green = True
    Yellow == Yellow = True
    _ == _ = False

abc = 334

class YesNo a where
    yesno :: a -> Bool

infixr 9 :-:
data ListList a = Empty | a :-: (ListList a) deriving (Show, Read, Eq, Ord)
