{- Ejercicio 2
    Funcion: reconversion
    Descripcion: Recibe un parametro numerico , y realiza reconversion monetaria , quitandole 3 ceros al valor ingresado.
    Uso: reconversion 1000  -> 1.0
-}
reconversion :: Double -> Double
reconversion x = x / 1000

{- Ejercicio 3
    Funcion: cashback
    Descripcion : Regresa el 10% de x numero
    Uso: cashback 2545  ->   254.5
-}
cashback :: Double -> Double
cashback x = x * 0.10

{- Ejercicio 4
    Funcion: cashbackMonto
    Descripcion : Regresa el valor monetario de los puntos dependiendo el valor de cada punto
    Uso: cashbackMonto 264 0.10 -> 26.4
-}
cashbackMonto :: Double ->  Double -> Double
cashbackMonto x y = x * y

{- Ejercicio 5
    Funcion: minutosHoras
    Descripcion: Recibe un numero entero el cual hace una conversion en horas
    Uso: minutosHoras 112 -> 1 hora y 52 minutos
-}
minutosHoras :: Int -> String
minutosHoras x = show (x `div` 60) ++ " hora y " ++ show (x `mod` 60) ++ " minutos"


{-Ejercicio 6
    Funcion: esEstafa
    Descripcion: Determina si el cliente estafo a la tienda
    Uso: esEstafa 100 200 100 0 -> True
-}
esEstafa :: Double -> Double -> Double -> Double -> Bool
esEstafa costo billeteGrande billeteExacto cambioDevuelto = cambioDevuelto < (billeteGrande - costo)



{- Ejercicio 7
    Funcion: esDescendente
    Descripcion: Decide si 4 parametros estan de manera descendente, (Lo estoy considerando como si no fueran forzosamente consecutivos, 10, 7, 6, 1, en ese caso estaria bien)
    Uso: esDescendente 10 9 8 7 -> True
-}
esDescendente :: Double -> Double -> Double -> Double -> Bool
esDescendente x y z w = x > y && y > z && z > w

{- Ejercicio 8
    Funcion: imc
    Descripcion: Calcula el imc sin importar si la altura lo da en cm o metros
    Uso: imc 53.3 161 -> normal
-}

imc :: Double -> Double -> String
imc kg altura = 
    if altura > 3
    -- Caso 1: Si está en cm, dividimos la altura entre 100
    then if kg / ((altura/100)*(altura/100)) < 18.5
         then "bajo"
         else if kg / ((altura/100)*(altura/100)) < 25.0
              then "normal"
              else if kg / ((altura/100)*(altura/100)) < 30.0
                   then "sobrepeso"
                   else "obesidad"
                   
    -- Caso 2: Si ya está en metros, usamos la altura directa
    else if kg / (altura*altura) < 18.5
         then "bajo"
         else if kg / (altura*altura) < 25.0
              then "normal"
              else if kg / (altura*altura) < 30.0
                   then "sobrepeso"
                   else "obesidad"

-- Lo hice sin where porque la practica no lo permite

{- Ejercicio 9 
    Funcion: hipotenusa
    Descripcion: Calcula la hipotenusa de un triangulo rectangulo, dando la base y la altura
    Uso: hipotenusa 9.0 12.0 -> 15
-}

hipotenusa :: Double -> Double -> Double
hipotenusa b h = sqrt ((b*b)+(h*h))

{- Ejercicio 10
    Funcion: pendiente
    Descripcion: Se calcula la pendiente de una recta dados 2 coordenadas de esta
    Uso: pendiente (3,2) (7,8) -> 1.5
-}
pendiente :: (Double, Double) -> (Double, Double) -> Double
pendiente (x1,y1) (x2,y2) = (y2-y1) / (x2-x1)

{- Ejercicio 11
    Funcion: distanciaPuntos
    Descripcion: Calcula la distancia entre dos puntos con coordenadas especificadas
    Uso: distanciaPuntos (2,1) (5,5) -> 5 
-}
distanciaPuntos :: (Double, Double) -> (Double, Double) -> Double
distanciaPuntos (x1,y1) (x2,y2) = sqrt (((x2-x1)*(x2-x1)) + ((y2-y1)*(y2-y1)))