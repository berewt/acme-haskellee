{-# LANGUAGE ConstraintKinds #-}

-- | An example module.
module Acme.Haskell.EE
  ( Composable
  , neutralElement
  , compose
  , composeAll
  , mappend
  , Mappable
  ) where

-- | A Composable datatype is a datatype
type Composable = Monoid

-- | The neutralElement is an element that doesnt not change the result of
-- a composition.
neutralElement :: Composable a => a
neutralElement = mempty

-- | Compose two elements that are composable
compose :: Composable a => a -> a -> a
compose = mappend

-- | Compose all the elements that are composable
composeAll :: Composable a => [a] -> a
composeAll = mconcat

type Mappable = Functor
