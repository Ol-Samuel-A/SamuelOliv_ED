--Importar funciones Auxiliares
import Auxiliar

{- 
    Ejercicio 2
    Función: a_entero
    Descripcion: Recibe un Natural y devuelve un entero
    Uso: a_entero CeroEnt -> 0
-}

a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n 