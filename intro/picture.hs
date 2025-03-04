{-# LANGUAGE OverloadedStrings #-}
-- USAR NO SITE code.world/haskell
import CodeWorld

botCircle c = colored c (translated 0 (-1.5) (solidCircle 1))

topCircle c = colored c (translated 0 1.5 (solidCircle 1))

frame = rectangle 2.5 5.5

trafficLight :: Bool -> Picture
trafficLight True = frame & botCircle green & topCircle black
trafficLight False = frame & botCircle black & topCircle red

trafficController :: Double -> Picture
trafficController t
  | round (t / 3) `mod` 2 == 0 = trafficLight True
  | otherwise = trafficLight False

main :: IO ()
main = animationOf trafficController
