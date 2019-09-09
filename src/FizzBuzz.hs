module FizzBuzz where

import Data.Maybe ( fromMaybe )

type Rule = Integer -> Maybe String

fizzBuzz :: Integer -> String
fizzBuzz = fromRules
  [ fizz
  , buzz
  ]

wacky :: Integer -> String
wacky = fromRules
  [ fizz
  , buzz
  , rule 7 "quux"
  ]

fromRules :: [Rule] -> Integer -> String
fromRules rules n = fromMaybe (show n) . mconcat rules $ n

rule :: Integer -> String -> Rule
rule m s n
  | n `mod` m == 0 = Just s
  | otherwise      = Nothing

fizz :: Rule
fizz = rule 3 "Fizz"

buzz :: Rule
buzz = rule 5 "Buzz"
