{-
    Funcion: reconversion
    Descripcion: Recibe un parametro numerico , y realiza reconversion monetaria , quitandole 3 ceros al valor ingresado.
    Uso: reconversion 1000  -> 1.0
-}

reconversion :: Double -> Double
reconversion x = x / 1000

{-
    Funcion: cashback
    Descripcion : Regresa el 10% de x numero
    Uso: cashback 2545  ->   254.5
-}
cashback :: Double -> Double
cashback x = x * 0.10

{-
    Funcion: cashbackMonto
    Descripcion : Regresa el valor monetario de los puntos dependiendo el valor de cada punto
    Uso: cashbackMonto 264 0.10 -> 26.4
-}

cashbackMonto :: Double ->  Double -> Double
cashbackMonto x y = x * y

{-
    Funcion: minutosHoras
    Descripcion: Recibe un numero entero el cual hace una conversion en horas
    Uso: minutosHoras 112 -> 1 hora y 52 minutos

-}