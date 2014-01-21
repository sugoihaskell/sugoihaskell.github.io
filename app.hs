{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty

import Network.Wai.Middleware.RequestLogger
import Network.Wai.Middleware.Static

main :: IO ()
main = scotty 3000 $ do
  middleware logStdoutDev
  middleware static

  get "/" $ file "index.html"
