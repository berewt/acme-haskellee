{-# LANGUAGE ConstraintKinds #-}

module Acme.HaskellEE.MappableInTwoDifferentWays
  ( MappableInTwoDifferentWays
  , twoWaysMap
  , mapAccorrdingToTheFirstParameter
  , mapAccorrdingToTheSecondParameter
  ) where

import Data.Bifunctor

type MappableInTwoDifferentWays = Bifunctor

twoWaysMap :: MappableInTwoDifferentWays f
           => (a -> c) -> (b -> d) -> f a b -> f c d
twoWaysMap = bimap

mapAccorrdingToTheFirstParameter :: MappableInTwoDifferentWays f
                                 => (a -> c) -> f a b -> f c b
mapAccorrdingToTheFirstParameter = first

mapAccorrdingToTheSecondParameter :: MappableInTwoDifferentWays f
                                 => (b -> d) -> f a b -> f a d
mapAccorrdingToTheSecondParameter = second
