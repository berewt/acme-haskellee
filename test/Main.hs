import qualified Test.Tasty

import Test.Tasty.Hspec

import Acme.Haskell.EE

main :: IO ()
main = do
    test <- testSpec "acme-haskellee" spec
    Test.Tasty.defaultMain test

spec :: Spec
spec = parallel $ do
    it "compose a monoids" $ do
        ("Hel" `compose` "lo")  `shouldBe` "Hello"
