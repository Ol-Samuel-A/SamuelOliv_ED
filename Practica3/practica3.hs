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