import Auxiliar

{-  Ejercicio 1
    Funcion: a_natural
    Descripcion: Recibe un entero y lo regresa a su estructura de dato Natural
    Uso: a_natural 0 -> Cero
-}

a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n = S (a_natural (n-1))

{-
    Ejercicio 3
    Funcion: potenciaNat
    Descripcion: Eleva un número natural a la potencia del segundo.
    Uso: potencia (S(S(S(Cero)))) (S(S(Cero))) -> S(S(S(S(S(S(S(S(S (Cero)))))))))
-}

potenciaNat :: Natural -> Natural -> Natural
potenciaNat n Cero = S Cero
potenciaNat n (S m) = multNat n (potenciaNat n m)


{-
    Ejercicio 4
    Funcion: facNat
    Descripcion: Recibe un numero natural, devuelve su factorial
    Uso: facNat (S (S (S Cero))) -> S (S (S (S (S (S Cero)))))
-}

facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multNat (S n) (facNat n)



