module Funciones_Auxiliares (esParBin, esPrimo, divisores, tasaRendimiento, mesesADias) where

import Data.Bits

{-Función: esParBin
Descripción: Verifica si un entero es par
de acuerdo a sus operaciones entre bits.
Uso: esParBin = True
-}

esParBin :: Int -> Bool
esParBin n = (n.&.1) == 0

{-Función: esPrimo
Deescripción: Dado un número verifica si
es primo o no.
Uso: esPrimo 7 = True
-}

esPrimo :: Int -> Bool
esPrimo p = length [x | x <- [1..p], p `mod` x == 0] == 2

{-Función: divisores
Descripción: Devuelve una lista de los divisores
de un entero positivo.
Uso: divisores 18 = [1, 2, 3, 6, 9, 18]
-}

divisores :: Int -> [Int]
divisores n = [d | d <- [1..n], n `mod` d == 0]

{-Funcion: tasaRendimiento
Descripción: Recibe el plazo de tiempo en días
o meses y calcula la tasa de rendimiento anual bruta.
Uso: tasaRendimiento ("Días", 28) = 0.0609
-}

tasaRendimiento :: (String, Float) -> Float
tasaRendimiento (r, t) =
  
  if r == "Meses" && t == 1
  then 0.0609
  else (if r == "Meses" && t == 6
   then 0.0691
   else (if r == "Meses" && t == 12
    then 0.0744
    else (if r == "Días" && t == 28
     then 0.0609
     else (if r == "Días" && t == 182
      then 0.0691
      else (if r == "Días" && t == 364
       then 0.0744
       else 0 )))))

{-Función: mesesADias
Descripción: Recibe la tasa de rendimiento ingresada en meses
y regresa cuanto tiempo es en días
Uso: mesesADias ("Meses", 6) = 182
-}
mesesADias :: (String, Float) -> Float
mesesADias (r, t) =
  if r == "Meses" && t == 1
  then 28
  else (if r == "Meses" && t == 6
   then 182
   else (if r == "Meses" && t == 12
    then 364
    else (if r == "Días" && t >= 28
     then t
     else 0)))