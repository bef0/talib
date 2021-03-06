module Main where

import Test.Tasty
import Test.Tasty.QuickCheck
import Test.Tasty.HUnit
import Data.Vector -- TODO: should match Vector used for the api. .Storable? .Unboxed?
import Test.QuickCheck
import Test.HUnit

import Tests.Wrappers

import qualified Data.TALib

main :: IO ()
main = do
    Data.TALib.c_ta_init
    defaultMain allTests

allTests :: TestTree
allTests = testGroup "TALib Tests" [
  wrapperTests
  ]
