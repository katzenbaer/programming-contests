hello_worlds n = putStrLn $ aux n ""
  where aux 0 s = s
        aux n s = aux (n-1) $ s ++ "Hello World\n"

-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
   n <- readLn :: IO Int
   hello_worlds n


