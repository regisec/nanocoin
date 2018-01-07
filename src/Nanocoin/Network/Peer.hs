{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveAnyClass #-}

-- XXX RENAME:
-- module Nanocoin.Network.Utils
module Nanocoin.Network.Peer (
  Peer(..),
  Peers,
) where

import Protolude

import Data.Aeson (ToJSON(..))
import Data.Binary (Binary)
import qualified Data.Serialize as S

import Control.Distributed.Process (ProcessId)
import Control.Distributed.Process.Serializable

import Nanocoin.Network.Utils

type Peers = Set Peer

newtype Peer = Peer { pid :: ProcessId }
  deriving (Show, Eq, Ord, Generic, Binary, Typeable, Serializable)
