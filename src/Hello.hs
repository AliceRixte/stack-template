module Hello
  ( module Hello
  ) where

sayHello :: IO ()
sayHello = putStr "Hello "

sayWorld :: IO ()
sayWorld = putStrLn "world !"