module Funciones_Auxiliares (esParBin, esPrimo, divisores) where

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