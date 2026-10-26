import Paridad (esParBin)

{-
    Tipo de dato: TiempoPasado
    Descripcion: Tipo de dato para representar el tiempo que paso en dias o meses
-}
data TiempoPasado = Dias Int | Meses Int deriving (Show, Eq)

{-
    Funcion: obtDias
    Descripcion: Ayuda a devolver los dias segun el tiempo que paso
-}
obtDias :: TiempoPasado -> Double
obtDias (Dias d) = 
    if d == 28 then 28
    else if d == 182 then 182
    else 364
obtDias (Meses m) = 
    if m == 1 then 28
    else if m == 6 then 182
    else 364

{-
    Funcion: obtTasa
    Descripcion: Es una funcion que ayuda a devolver la tasa anual (i) segun el plazo
-}
obtTasa :: TiempoPasado -> Double
obtTasa (Dias d) = 
    if d == 28 then 0.0609
    else if d == 182 then 0.0691
    else 0.0744
obtTasa (Meses m) = 
    if m == 1 then 0.0609
    else if m == 6 then 0.0691
    else 0.0744

{-
    Funcion: cetes
    Descripcion: Calcula el monto final de inversiones en Cetes dado un monto inicial y un plazo
    Anotacion : Solo estoy considerando 3 valores ya que en el pdf dice "podrías requerir este dinero a un plazo de 1, 6 o 12 meses"
                creo que en cetes nada mas deja invertir en periodos de 28 dias no ? La verdad no le se a las inversiones :b
-}
cetes :: Double -> TiempoPasado -> Double
cetes vi periodo = vi * (1 + (obtTasa periodo) * ((obtDias periodo) / 360))

{-
    Funcion: txtPeriodo
    Decripcion : Funcion auxiliar para mostrar el plazo como cadena de texto
-}
txtPeriodo :: TiempoPasado -> String
txtPeriodo (Dias n)  = show n ++ " dias"
txtPeriodo (Meses n) = show n ++ " meses"

{-
    Funcion: mensajeCetes
    Decripcion : Genera el texto que describe El plazo de la inversión, el rendimiento bruto obtenido y el monto acumulado al finalizar el plazo.
-}
mensajeCetes :: Double -> TiempoPasado -> String
mensajeCetes vi periodo = 
    "Despues de " ++ txtPeriodo periodo ++ ", obtuve " ++ show ((cetes vi periodo) - vi) ++ 
    " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de " ++ show (cetes vi periodo) ++ "."


{-
    Funcion: negativos
    Descripcion: cuenta los numeros negativos de una lista.
    Uso: negativos [ -1 , 2 , 4 , 6 , -4] -> 2
-}

negativos :: [Int] -> Int
negativos xs = length [x | x <- xs, x < 0]

{-
    Funcion: soloPares
    Descripcion: Devuelve solo los numeros pares en una lista usando de manera exportada una funcion de clase
                 llamada esParBin, yo la habia guardado como esParBin asi que mejor mantube el mismo nombre para no complicarme.
    Uso: soloPares [1 ,2 ,3 ,4] -> [2, 4]
-}

soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esParBin x]

{-
    Funciones Auxiliares para: primos
    Descripcion: Funciones que utilice para que la funcion primos funcionara perfectamente

    1. Funcion: divisores
       Descripcion : Recibe un numero entero n y devuelve una lista con todos los numeros 
                    del 1 al n que lo dividen exactamente (cuando el residuo con mod es 0)
    
    2. Funcion: esPrimo
       Decripcion: Verifica si un numero es primo revisando que tenga exactamente 2 divisores 
                    (el 1 y el mismo numero) mediante la funcion length.
-}

divisores :: Int -> [Int]
divisores n = [d | d <- [1..n], n `mod` d == 0]

esPrimo :: Int -> Bool
esPrimo n = length (divisores n) == 2

{-
    Funcion: primos
    Descripcion: Devuelve los primos de la lista de el 1 al 20
    Uso: primos [1..20] -> [2 , 3 , 5 , 7 , 11 , 13 , 17 , 19]
-}
primos :: [Int] -> [Int]
primos xs = [x | x <- xs, esPrimo x]

{-
    Funcion Auxiliar para : coprimos
    Descripcion: Son funciones de apoyo para que la funcion coprimos
        1. Funcion: divisoresComunes
           Descripcion: Recibe dos numeros enteros (a y b) y devuelve una lista con todos los 
                        numeros que dividen exactamente a ambos al mismo tiempo (residuo 0 con mod).
-}

divisoresComunes :: Int -> Int -> [Int]
divisoresComunes a b = [d | d <- [1..a], a `mod` d == 0, b `mod` d == 0]

{-
    Funcion: coprimos
    Descripcion: recibe un enteron y devuelve una lista de los coprimos de n
    Uso: coprimos 10 -> [1 ,3 ,7 ,9]
-}
coprimos :: Int -> [Int]
coprimos n = [x | x <- [1..n], length (divisoresComunes x n) == 1]