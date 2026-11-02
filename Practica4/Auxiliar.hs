module Auxiliar where

-- Auxiliares de tipo de dato:

--Natural:
data Natural = Cero | S Natural deriving (Eq, Show)

-- Las siguientes dos funciones se utilizaran para el ejercicio 3
{- 
    Función: sumaNat
    Descripcion: Recibe dos naturales y devuelve la suma de estos
    Uso: sumaNat cero (S Cero) -> (S Cero)
-}
sumaNat :: Natural -> Natural -> Natural
sumaNat Cero m = m
sumaNat (S n) m = S (sumaNat n m)

{- 
    Función: multNat
    Descripcion: Recibe dos naturales y devuelve el producto de estos
    Uso: multNat cero (S Cero) -> Cero
-}

multNat :: Natural -> Natural -> Natural
multNat Cero m = Cero
multNat (S n) m = sumaNat m (multNat n m)
