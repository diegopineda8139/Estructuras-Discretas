import Par_Binario

{-Función: cetes
Descripción: ingresas el valor inicial, el plazo
en Meses o Días y devuelve el monto final disponible
al concluir el plazo seleccionado.
Uso: cetes 100 (Días 28) = 100.4
-}



{-Función: mensajeCetes
Descripción: 
Uso: mensajeCetes 
-}



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