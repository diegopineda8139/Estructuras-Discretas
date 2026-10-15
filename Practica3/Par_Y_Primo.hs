module Par_Y_Primo (esParBin, esPrimo) where

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