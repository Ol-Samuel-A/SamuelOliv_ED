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

--Entero:
-- Cambie el nombre de la variable porque soltaba un error, a comparacion de como venia en el classrroom
-- Tambien de Succ lo pas a Suc , porque era mas rapido en escritura :b

data Ent = Zero | Suc Ent | Neg Ent deriving ( Eq, Show)


{- Auxiliar para el ejercicio 5
Función: sumaEnt
Descripcion: Recibe dos enteros y devuelve la suma 
-}

sumaEnt :: Ent -> Ent -> Ent
sumaEnt Zero (Suc m) = (Suc m)
sumaEnt Zero (Neg m) = (Neg m)
sumaEnt (Suc n) Zero = (Suc n)
sumaEnt (Neg n) Zero = (Neg n)
sumaEnt (Suc n) (Suc m) = Suc(sumaEnt n (Suc m))
sumaEnt (Neg n) (Neg m) = Neg (sumaEnt n m)
sumaEnt (Suc n) (Neg m) = 
    if (Suc n)==m then Zero 
    else restaEnt (Suc n) m
sumaEnt (Neg n) (Suc m) = 
    if n==(Suc m) then Zero 
    else restaEnt (Suc m) n


{- Auxiliar tambien para el ejercicio 5
Función: restaEnt
Descripcion: Recibe dos enteros y devuelve la resta 
Uso: restaEnt Zero (Suc Zero) -> Neg (Suc Zero)
-}

restaEnt :: Ent -> Ent -> Ent
restaEnt (Suc n) Zero = (Suc n)
restaEnt (Neg n) Zero = (Neg n)
restaEnt Zero (Neg m) = m
restaEnt Zero (Suc m) = Neg (Suc m)
restaEnt (Suc n) (Suc m) = if ((Suc n) == (Suc m)) then Zero else if (mayorEnt (Suc n) (Suc m)) then restaEnt n m else Neg (restaEnt m n)
restaEnt (Neg n) (Neg m) = sumaEnt (Neg n) m
restaEnt (Suc n) (Neg m) = sumaEnt (Suc n) m
restaEnt (Neg n) (Suc m) = Neg (Suc (sumaEnt n m))

{- Auxiliar para el 5
Función: mayorEnt
Descripcion: Recibe dos enteros y devuelve True o False dependiendo de si el primero es mayor que el otro, pa mas rapido todo
Uso: mayorEnt (Suc Zero) Zero = True

-}

mayorEnt :: Ent -> Ent -> Bool
mayorEnt (Suc n) Zero = True
mayorEnt Zero (Suc m) = False
mayorEnt (Neg n) Zero = False
mayorEnt Zero (Neg m) = True
mayorEnt (Neg n) (Suc m) = False
mayorEnt (Suc n) (Neg m) = True
mayorEnt (Suc n) (Suc m) = mayorEnt n m
mayorEnt (Neg n) (Neg m) = not (mayorEnt n m)
