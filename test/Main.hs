import qualified Test.Tasty

import Test.Tasty.Hspec

import Acme.Haskell.EE

main :: IO ()
main = do
    test <- testSpec "acme-haskellee" spec
    Test.Tasty.defaultMain test


spec :: Spec
spec = parallel $ do
    it "compose a monoid" $ do
        ("Hel" `compose` "lo")  `shouldBe` "Hello"
    it "composeAll a monoid" $ do
        composeAll ["He", "ll", "o"] `shouldBe` "Hello"
    it "bind an applicative" $ do
        bind "Hello" `shouldBe` Just "Hello"
