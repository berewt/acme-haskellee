{-# LANGUAGE ConstraintKinds #-}

module Acme.HaskellEE.Bindable
  ( Bindable
  , bind
  ) where

-- | A structure where you can bind value in
-- (like an applicative without the math, because you bind).
type Bindable = Applicative

bind :: Bindable f => a -> f a
bind = pure


