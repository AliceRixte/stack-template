-- | Notice that the name of the Haskell file starts with a lower case, otherwise Haskell will show an error like :
--
--  > File name does not match module name:
--  >  Saw: ‘Main’
--  >  Expected: World’
--
-- See this issue : https://stackoverflow.com/questions/54150751/how-to-define-multiple-executables-main-modules-with-stack-hpack

import Hello


main :: IO ()
main = sayWorld