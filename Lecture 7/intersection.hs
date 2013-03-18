import Data.SG.Geometry.TwoDim

intersection :: Line2' a -> Line2' a -> Maybe (a, a)
intersection l1 l2 = intersectionLines2 l1 l2
