{-# LANGUAGE OverloadedStrings #-}

import qualified Data.ByteString.Lazy as BL
import qualified Data.Vector as V
import Data.Csv
import System.Environment

import Analyzer
import Types

main :: IO()
main = do
  args <- getArgs
  let filePath = if null args then "sample_logs.csv" else head args
  csvData <- BL.readFile filePath
  case decodeByName csvData of
    Left err -> putStrLn ("Failed to parse CSV: " ++ err)
    Right (_, v) -> runAnalysis (V.toList v)
