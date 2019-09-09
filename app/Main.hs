{-# LANGUAGE LambdaCase #-}

module Main where

import FizzBuzz           ( fizzBuzz )
import System.Environment ( getArgs )

main :: IO ()
main = getArgs >>= \case
  [n] -> mapM_ (putStrLn . fizzBuzz) [1..read n]
  other -> error $ "invalid args (must supply exactly one integer): " ++ show other
