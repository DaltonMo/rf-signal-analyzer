module Analyzer where

import Types
import Text.Printf

runAnalysis :: [RFLog] -> IO()
runAnalysis logs = do
  let total = length logs
      dropped = filter (\x -> status x == "DROP") logs
      ok = total - length dropped
      avgRSSI = fromIntegral (sum (map rssi logs)) / fromIntegral total :: Double

  putStrLn "RF Signal Analysis Report"
  putStrLn "───────────────────────────────"
  printf "- Entries parsed:      %d\n" total
  printf "- Average RSSI:        %.2f dBm\n" avgRSSI
  printf "- Packet loss rate:    %.2f%%\n" (fromIntegral (length dropped) / fromIntegral total * 100 :: Double)
  putStrLn ""