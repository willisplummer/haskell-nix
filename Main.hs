{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE DeriveAnyClass    #-}
{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators     #-}

module Main where

import Data.Aeson
import GHC.Generics
import Network.Wai.Handler.Warp
import Network.Wai.Logger
import Servant

type WordsAPI = "test" :> Get '[PlainText] String

data Words = Words { words :: [String] }
  deriving (Eq, Show, Generic, ToJSON)

server :: Proxy WordsAPI
server = Proxy

handler :: Server WordsAPI
handler = return "Hello World"

main :: IO ()
main = do
  putStrLn "Running on port 8080"
  withStdoutLogger $ \aplogger -> do
    let settings = setPort 8080 $ setLogger aplogger $ defaultSettings
    runSettings settings $ serve server handler
