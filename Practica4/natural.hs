module Natural where 
import Auxiliar

{-  Ejercicio 1
    Funcion: a_natural
    Descripcion: Recibe un entero y lo regresa a su estructura de dato Natural
    Uso: a_natural 0 -> Cero
-}

a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n = S (a_natural (n-1))

