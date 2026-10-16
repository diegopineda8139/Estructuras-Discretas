import Funciones_Auxiliares

{-Función: cetes
Descripción: ingresas el valor inicial, el plazo
en Meses o Días y devuelve el monto final disponible
al concluir el plazo seleccionado.
Uso: cetes 100 (Días 28) = 100.4
-}

cetes :: Float -> (String, Float) -> Float
cetes valorI (r, t) = valorI * (1 + tasaRendimiento (r, t) * (mesesADias (r, t) / 360))

{-Función: mensajeCetes
Descripción: 
Uso: mensajeCetes 
-}

mensajeCetes :: Float -> (String, Float) -> String
mensajeCetes valorI (r, t) = " Despues de " ++ show (t) ++ " dias , obtuve " ++ show ( cetes valorI (r, t) - valorI) ++ " de rendimiento bruto sin asumir ningun riesgo crediticio . El monto total de mi inversion es de " ++ show (cetes valorI (r, t) ) 

{-Función: negativos
Descripción: Cuenta los números negativos
de una lista
Uso: negativos [-1, 2, 4, 6, -4] = 2
-}

negativos :: [Int] -> Int
negativos list = length [list | x <- list, x < 0]

{-Función: soloPares
Descripción: recibe una lista de tipo entero
y duvuelve una lista únicamente con los números
pares de la lista original.
Uso: soloPares [1, 2, 3, 4] = [2, 4]
-}

soloPares :: [Int] -> [Int]
soloPares list = [x | x <- list, esParBin x == True]

{-Función: primos
Descripción: Recibe una lista y devuelve
los primos.
Uso: primos [1..20] = [2, 3, 5, 7, 11, 13, 17, 19]
-}

primos :: [Int] -> [Int]
primos list = [x | x <- list, esPrimo x == True]

{-Función: coprimos
Descripción: Recibe un entero y duelve una
lista de los coprimos de n.
Uso: coprimos 10 = [1, 3, 7, 9]
-}

coprimos :: Int -> [Int]
coprimos c = [x | x <- [1..c], [d | d <- divisores x, c `mod` d == 0] == [1]]