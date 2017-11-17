{-# LANGUAGE ConstraintKinds #-}

module Acme.HaskellEE.Sequenceable
  ( Sequenceable
  , flatten
  , andThen
  ) where

import Control.Monad (join)

type Sequenceable = Monad

flatten :: Sequenceable s => s (s a) -> s a
flatten = join

andThen :: Sequenceable s => s a -> (a -> s b) -> s b
andThen = (>>=)
