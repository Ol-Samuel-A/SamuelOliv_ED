--Importar funciones Auxiliares
import Auxiliar

{- 
    Ejercicio 6
    Función: mayorIgual
    Descripcionn : Compara si una matrioska tiene mas o menos matriskas
    Uso: mayorIgual Mati Mati -> True
-}

mayorIgual :: Matri -> Matri -> Bool
mayorIgual Mati Mati = True
mayorIgual Mati (Cont m) = False
mayorIgual (Cont m) Mati = True

mayorIgual (Cont m) (Cont n) = mayorIgual m n

{- 
    Ejercicio 7
    Función: aplana
    Descripcion: Recibe una matrioska y devuelve todas las que estan dentro en lista
    Uso: aplana Mati -> [Mati]
-}

aplana :: Matri -> [Matri]
aplana Mati = [Mati]
aplana m@(Cont n) = m : aplana n