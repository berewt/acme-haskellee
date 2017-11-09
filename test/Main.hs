import qualified Test.Tasty

import Test.Tasty.Hspec

import Acme.HaskellEE.Composable
import Acme.HaskellEE.Bindable
import Acme.HaskellEE.Mappable
import Acme.HaskellEE.MappableInTwoDifferentWays

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
    it "twoWaysMap a bifunctor" $ do
        twoWaysMap length tail ("Hello", "World") `shouldBe` (5, "orld")
    it "mapAccordingToTheFirstParameter a bifunctor" $ do
        mapAccordingToTheFirstParameter length ("Hello", "World") `shouldBe` (5, "World")
    it "mapAccordingToTheSecondParameter a bifunctor" $ do
        mapAccordingToTheSecondParameter tail ("Hello", "World") `shouldBe` ("Hello", "orld")
