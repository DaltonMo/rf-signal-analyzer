{-# LANGUAGE DeriveGeneric #-}

module Types where

import GHC.Generics
import Data.Csv

data RFLog = RFLog
  { timestamp :: Int
  , channel   :: Int
  , rssi      :: Int
  , packet_id :: Int
  , status    :: ByteString
  } deriving (Show, Generic)

instance FromNamedRecord RFLog