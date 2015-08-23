module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury | Venus | Earth | Mars | Jupiter | Saturn | Uranus | Neptune

type Seconds = Integer
type Years = Double

ageOn :: Planet -> Seconds -> Years
ageOn planet seconds = fromInteger seconds / orbitalPeriod planet
  where orbitalPeriod p = 31557600 * scale p
        scale p = case p of
          Mercury -> 0.2408467
          Venus   -> 0.61519726
          Earth   -> 1.0
          Mars    -> 1.8808158
          Jupiter -> 11.862615
          Saturn  -> 29.447498
          Uranus  -> 84.016846
          Neptune -> 164.79132
