module Paridad (esParBin) where
-- Es para que deje exportar

import Data.Bits

esParBin :: Int -> Bool
esParBin n = (n .&. 1) == 0